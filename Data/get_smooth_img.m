clear all;close all;clc
src_dir='test_data';
dst_dir='test_data_RTV';
flist=dir(src_dir);
for k=3:length(flist)
    img0=imread(fullfile(src_dir, flist(k).name));
    %img1=L0Smoothing(img0,0.01,1.2);
    img1=tsmooth(img0,0.015,3);
    imwrite(img1, fullfile(dst_dir,flist(k).name))
end
