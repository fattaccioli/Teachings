%Movie name
movie = 'mouvement_Brownien.avi';
videoReaderObject = VideoReader(movie);

%conversion of pixel to micrometer
pix2mum = 0.155 %1 pix = pix2mum microns

%%
% Determine dimensions: nframes and height width.
nframes = videoReaderObject.NumberOfFrames;
rows = videoReaderObject.Height;
cols = videoReaderObject.Width;	

%Create holder to store image data
Holder = zeros(rows,cols);

%read first image and display
Holder = rgb2gray(read(videoReaderObject,1));
figure;imagesc(Holder,[0, 255]);colormap('gray');colorbar;axis equal tight; 
h=colorbar;
set(h,'fontsize',14);
h.TickLength = 0.02;
h.LineWidth = 1.5;
set(gca,'XtickLabel', [], 'Xtick', [])
set(gca,'YtickLabel', [], 'Ytick', [])

%Rectangle characteristics to include bead
X1 = 50; %coordinates of bootom left corner of square
Y1 = 50; %coordinates of bootom left corner of square
W1 = 32;  % width in x direction -1
W2 = 32;  % width in y direction -1

%Display rectangle and wait for user to double click
h = imrect(gca, [X1,Y1,W1,W2]) ;
wait(h);
pos = getPosition(h);
pos = round(pos);
X1 = floor((pos(1)));
Y1 = floor((pos(2)));
W1 = pos(3);
W2 = pos(4);
X2 = round((X1 + pos(3)));
Y2 = round((Y1 + pos(4)));
mask      = createMask(h);
a = round(pos(4));	%height
b = round(pos(3)); %width
delete(h);
rectangle('Position', pos,'EdgeColor','r','LineWidth',2 );

%Duplicate selected ROI to be used as template for x and y profiles
%DupROI = Holder(Y1:Y2,X1:X2); 

%Find rough position of the bead
[maxValue, linearIndexesOfMaxes] = max(Holder(:));
[rowMax,colMax] = ind2sub(size(Holder),linearIndexesOfMaxes);

%Extract x and Y profiles
xprofile = mean(Holder(rowMax-11:rowMax+11,:),1);
xprofile = xprofile - mean(xprofile); 
yprofile = mean(Holder(:,colMax-11:colMax+11),2);
yprofile = yprofile - mean(yprofile);


%Storages for bead position in x and y
beadPosLangevin = zeros(nframes,2);
beadPosFit = zeros(nframes,2);
beadPosMax = zeros(nframes,2); 
widthcor = 20; %parameter to be adjusted to different bead sizes


%%
%loop for tracking bead
for i=1:nframes
%Holder = uint8(imread(filename,'Index',i,'Info',InfoImage)); 

Holder = rgb2gray(read(videoReaderObject,i));
Holder = imgaussfilt(Holder,2); %gaussian blur to track bead at max

%find bead with maximum
[maxValue, linearIndexesOfMaxes] = max(Holder(:));
[rowMax,colMax] = ind2sub(size(Holder),linearIndexesOfMaxes);
[beadPosMax(i,1), beadPosMax(i,2)] = ind2sub(size(Holder),linearIndexesOfMaxes);

%Get line profile of bead in new ROI
xprofile2 = mean(Holder(rowMax-11:rowMax+11,:),1);
xprofile2 = xprofile2 - mean(xprofile2); 
yprofile2 = mean(Holder(:,colMax-11:colMax+11),2);
yprofile2 = yprofile2 - mean(yprofile2);

%compute cross correlation of profiles to get centroid of bead in x
%direction
[r,lags] = xcorr(xprofile2,xprofile);
[AmpMax, PosMax] = max(r(:));

%Initialize Fit over reduced range
lagscrop = lags(PosMax-7: PosMax+7); %7 suits well our video. Change if necessary
rcrop = r(PosMax-7: PosMax+7);

%do polynomial fit and retrive position of the bead in x position
p = polyfit(lagscrop, rcrop,4);
dp = [4*p(1) 3*p(2) 2*p(3) p(4)];
rr = roots(dp);
[AmpMin, PosMin] = min(abs(rr(:) - lagscrop(8))); %8 is the middle of the range
beadPosFit(i,2)=rr(PosMin);

%compute cross correlation of profiles to get centroid of bead in y
%direction
[r,lags] = xcorr(yprofile2',yprofile');
[AmpMax, PosMax] = max(r(:));

%Initialize Fit over reduced range
lagscrop = lags(PosMax-7: PosMax+7);
rcrop = r(PosMax-7: PosMax+7);
p = polyfit(lagscrop, rcrop,4);
dp = [4*p(1) 3*p(2) 2*p(3) p(4)];
rr = roots(dp);
[AmpMin, PosMin] = min(abs(rr(:) - lagscrop(8)));
beadPosFit(i,1)=rr(PosMin);
progressbar(i/nframes)
end


%%
% beadPosFit = Pince;
% beadPosLangevin =  beadPosFit(2:end,:) - beadPosFit(1:end-1,:);
% pix2mum = 0.155 %1 pix = pix2mum microns
%%

%display positions from fits
x = beadPosFit(:,1)';
y = beadPosFit(:,2)';
limplot = ceil(max(abs(beadPosFit(:)))/5)*5;
z = zeros(1,size(beadPosFit,1));
lineColor = linspace(0, size(beadPosFit,1)-1, size(beadPosFit,1));  % This is the color, it varies with x in this case.
% Plot the line with width 8 so we can see the colors well.
figure; surface([x;x], [y;y], [z;z], [lineColor;lineColor],...
	'FaceColor', 'no',...
	'EdgeColor', 'interp',...
	'LineWidth', 1);
grid off;
axis square;
xlim([-limplot limplot]);
ylim([-limplot limplot]);
colormap(gca,'jet');
colorbar;
h=colorbar;
set(h,'fontsize',14);
h.TickLength = 0.02;
h.LineWidth = 1.5;
h = gca;
h.XAxis.FontSize = 14;
h.YAxis.FontSize = 14;
h.XLabel.FontSize = 20;
h.YLabel.FontSize = 20;
h.LineWidth=1.5;
xlabel('x (pix)')
ylabel('y (pix)')
title('Bead position over time', 'FontSize', 18);
set(gca,'box','on')

%%
%Display Langevin representation 
%Calculate displacement with same origin
beadPosLangevin =  beadPosFit(2:end,:) - beadPosFit(1:end-1,:);

%beadPosLangevin =  Pince(2:end,:) - Pince(1:end-1,:);

%Calculate r modulus 
beadR = sqrt(beadPosLangevin(1:end,1).^2 + beadPosLangevin(1:end,2).^2);
D_Langevin = mean(beadR.^2)/4/(0.05)*(pix2mum*1e-6).^2

%figure; histogram(beadR.^2);

figure; plot(beadPosLangevin(:,1),beadPosLangevin(:,2), 'b.',  'MarkerSize', 10);
    axis square;
xlim([-5 5]);
ylim([-5 5]);
h = gca;
h.XAxis.FontSize = 14;
h.YAxis.FontSize = 14;
h.XLabel.FontSize = 20;
h.YLabel.FontSize = 20;
h.LineWidth=1.5;
xlabel('x (pix)')
ylabel('y (pix)')
title('Langevin', 'FontSize', 18);
set(gca,'box','on')
hold on
th = 0:pi/50:2*pi; %100 point to draw circles
for r=0:0.5:5
xunit = r * cos(th) + 0;
yunit = r * sin(th) + 0;
p = plot(xunit, yunit, '-k');
p.Color = 'r';
end
hold off

%%
%Do some stuff with histograms
figure; 
subplot(1,2,1);histfit(beadPosLangevin(:,1));
axis square;
xlim([-5 5]);
ylim([0 200]);
h = gca;
h.XAxis.FontSize = 14;
h.YAxis.FontSize = 14;
h.XLabel.FontSize = 20;
h.YLabel.FontSize = 20;
h.LineWidth=1.5;
xlabel('x (pix)')
ylabel('Occurence')
title('Histogram x pos', 'FontSize', 18);
set(gca,'box','on')

subplot(1,2,2)
histfit(beadPosLangevin(:,2));
axis square
xlim([-5 5]);
ylim([0 200]);
h = gca;
h.XAxis.FontSize = 14;
h.YAxis.FontSize = 14;
h.XLabel.FontSize = 20;
h.YLabel.FontSize = 20;
h.LineWidth=1.5;
xlabel('y (pix)')
ylabel('Occurence')
title('Histogram y pos', 'FontSize', 18);
set(gca,'box','on')

%%
%Computes MSD with different lagtimes
q = zeros(nframes-1,2); 
for j = 1:nframes-1
    for i=1:nframes-j
        q(j,1) = q(j,1) + (beadPosFit(i+j,1)-beadPosFit(i,1))^2/(nframes-j);
        q(j,2) = q(j,2) + (beadPosFit(i+j,2)-beadPosFit(i,2))^2/(nframes-j);
    end
end

MSD = zeros(nframes-1,1);
MSD  = q(:,1) + q(:,2);

figure; plot(MSD);
h = gca;
h.XAxis.FontSize = 14;
h.YAxis.FontSize = 14;
h.XLabel.FontSize = 20;
h.YLabel.FontSize = 20;
h.LineWidth=1.5;
xlabel('tau (frames)')
ylabel('MSD (pix^2)')
set(gca,'box','on')
axis square;


x = linspace(1,110, 110);
%Do linear curve fitting over linear evolution
p = polyfit(x,MSD(1:110)',1); 
%print Diffusion coefficient
D_Fit_MSD = p(1)/4/(0.05)*(pix2mum*1e-6).^2