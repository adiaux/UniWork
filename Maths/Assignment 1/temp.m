clc;
clear;
for image_number=1:30
    imageName=strcat(num2str(image_number),'.jpg');
    ref = imread(imageName);
    str1='new';
    str2=strcat(num2str(image_number),'.jpg');
    finImage=append(str1,str2);
    A = imread(finImage);
    mse=immse(A,ref);
    PSNR = 20*log10(255)-10*log10(mse);
    disp("PSNR for the image");
    disp(image_number);
    disp(PSNR)
end