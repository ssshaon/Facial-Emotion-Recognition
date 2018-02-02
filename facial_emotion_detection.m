[fname,path]=uigetfile('.png','Face for Input Image');
fname=strcat(path,fname);
im=imread(fname);
imshow(im);
title('Input face');
c=input('Enter the class (1-6)');

F= FeatureStatistical(im);
try
    load db;
    F=[F c];
    db=[db;F];
    save db.mat db
catch
       db=[F c];
       save db.mat db
end
    