clear
clc
close all

[J,P]=uigetfile('*.*','select the image');
K=imread(strcat(P,J));
K=imresize(K,[256 256]);
figure,imshow(K);title('Input Image');
level=2;
IM1=bemd(K(:,:,1),level);
IM2=bemd(K(:,:,2),level);
IM3=bemd(K(:,:,3),level);
tmp=zeros(size(K));
for i=1:size(IM1,3)
     tmp(:,:,1)=IM1(:,:,i);
    tmp(:,:,2)=IM2(:,:,i);
    tmp(:,:,3)=IM3(:,:,i);
figure, imshow(mat2gray(tmp));title(['Decomposition Level ', num2str(i)]);
clear tmp;
end

S=zeros(size(K));
for i=1:size(IM1,3)
    img(:,:,1)=IM1(:,:,i);
    img(:,:,2)=IM2(:,:,i);
    img(:,:,3)=IM3(:,:,i);
    img=uint8(img);

% %% red (and blue) channel compensation
 compensated_img = compensate_channel(K, 0.6, 'red');
 compensated_img = im2uint8(compensated_img); % reverse of im2double
 compensated_img = compensate_channel(compensated_img,0.6, 'blue');
 compensated_img = im2uint8(compensated_img); % reverse of im2double
 white_balanced_img = apply_gray_world(compensated_img,20);
 D{i}= white_balanced_img;
 S=(S+double(D{i})).*0.6;
end
figure,imshow(uint8(S));title('Enhanced Image');


 
 