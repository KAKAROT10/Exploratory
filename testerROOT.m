function y = testerROOT()

fileID = fopen('root.txt','w');
for i = drange(1:10000)
    p=myRoot(i);
    j=sqrt(i);
    err=j-p;
    fprintf(fileID,'%5.5f %5.5f %5.5f\n',j,p,err);
end
fclose(fileID);
