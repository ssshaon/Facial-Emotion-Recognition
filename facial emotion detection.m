(fname path)=uigetfile('Open Face as Input','.tiff');
fname=strcat(path,fname);
im=imread(fname);
inshow(im);
title('input face');