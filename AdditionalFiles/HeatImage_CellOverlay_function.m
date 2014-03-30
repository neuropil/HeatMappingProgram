clear all
close all

%%

load pixel_thresholds

load ('Image_Data_Resized_25%_UnNamed004.mat')

[Gheat,Gintensity_mask_matrix,maskIndices] = pixel_density_IMAGE_function(Name);


%%
Gheat = uint8(Gheat);
[B,L] = bwboundaries(Cells);

%%

figure;
h1 = image(Gheat,'CDataMapping','scaled'); 
colormap(jet(256));

for i = 1:length(B)
    hold on
    plot(B{i}(:,2), B{i}(:,1),'LineWidth',2,'Color','m')
end

plot(maskIndices(:,2),maskIndices(:,1),'LineWidth',1.5, 'Color','r');


