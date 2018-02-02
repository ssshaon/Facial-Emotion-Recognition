[fname,path]=uigetfile('.png','Face for Classifying Face');
fname=strcat(path,fname);
im=imread(fname);
imshow(im);
title('Testing face');

F= FeatureStatistical(im); 
load db.mat
Ftrain=db(:,1:2);
Ctrain=db(:,3);

for i=1:size(Ftrain,1)
distance(1,:)=sum(abs(Ftrain(1,:)-F));
end
Min=min(distance);
if(Min<2)
m=find(distance==min(distance),1);
detected_class=Ctrain(m);
msgbox(strcat('Detected Class= (1=Sad,2=Happy,3=Angry,4=Disgust,5=Fear,6=Surprise)',num2str(detected_class)));
else
    msgbox('Not Recognized');
end