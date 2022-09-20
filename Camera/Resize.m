clear;clc;
%% ROTATION AND TRANSLATION MATRIX PV

% % camera pose is the inverse of extrinsic matrix
% Camerapose = [0.998443,0.0394997,0.0394225,-0.00399113;-0.0519907,0.91512,0.399819,0.0621855;-0.0202841,-0.401246,0.915748,-0.156827;0,0,0,1;]
% % Extrinsic matrix transform from world to camera.
% EX = inv(Camerapose);
% %these are rotation and translation matrix
% R = EX(1:3,1:3);
% T = 1000*EX(1:3, 4);

%% Intrinsic matrix PV
% fx=585.98;
% fy=585.464;
% ox=373.25;
% oy=201.301;
% k = [fx,0,ox;0,fy,oy;0,0,1];
% %RT and k are used to transform the 3d point in world to image
% coordinate.

%% m2c matrix:object pose PV
% quat = [-0.62459, -0.33279, -0.33500, 0.62203];
% rotm = quat2rotm(quat)
% t = [0.04182, -0.60221, 1.28715];
% t = t*1000

%% mask extract
% img=imread("1.png");
% figure;
% imshow(img);
% hold on;
% [X,Y]=getpts;
% plot(X,Y);
% bw = poly2mask(X,Y,428,760);
% imshow(bw)
% imwrite(bw,"mask.png")
% 
% % mask count
% img1=imread("mask.png");
% pix=sum(sum(img1));

%% image resize from 760*428 to 640*480
% load image and rgb channels
img1=imread("133032297468054596.png"); 
R = img1(:,:,1);    
G = img1(:,:,2);    
B = img1(:,:,3);    
[h1,w1]=size(R);
% define new rgb channels with new size
    
R_new = zeros(480,640);
G_new = zeros(480,640);
B_new = zeros(480,640);
[h2,w2]=size(R_new);
% REsize each channel
Ind_h = (h2-h1)/2 +1;
Ind_w =(w1-w2)/2 +1;
% A=size(R_new(Ind_h:(Ind_h+h1-1),:));
% size(Ind_w:(Ind_w+w2-1))
% AA=size(R(:,Ind_w:(Ind_w+w2-1)));
R_new(Ind_h:(Ind_h+h1-1),:) = R(:,Ind_w:(Ind_w+w2-1));
G_new(Ind_h:(Ind_h+h1-1),:) = G(:,Ind_w:(Ind_w+w2-1));
B_new(Ind_h:(Ind_h+h1-1),:) = B(:,Ind_w:(Ind_w+w2-1));

% Save resized rgb image 
img3 = cat(3, R_new,G_new,B_new);
img3 = (img3 / 256);
img3 = im2uint8(img3);
imwrite(img3,"000001.png")





