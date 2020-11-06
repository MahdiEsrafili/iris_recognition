close all;
clear;
i1 = imread('UBIRIS\1\1_1_1.jpg');
i1_g =rgb2gray(i1);
wavelength = [2 5];
orientation = [0.7854 1.5708];
gaborArray = gabor(wavelength, orientation, 'SpatialFrequencyBandwidth',[0.5000 2]);
gaborMag = imgaborfilt(i1_g, gaborArray);
figure
subplot(2,2,1);
for p = 1:4
    subplot(2,2,p)
    imshow(gaborMag(:,:,p),[]);
    theta = gaborArray(p).Orientation;
    lambda = gaborArray(p).Wavelength;
    title(sprintf('Orientation=%d, Wavelength=%d',theta,lambda));
end