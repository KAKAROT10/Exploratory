function y = tester()

fileID = fopen('rootOsquare.txt','w');
for i = drange(1:10000)
    p=myRoot(mySquare(i));
    err=i-p;
    if(err>=1 || err<=-1)
        fprintf(fileID,'%5.5f %5.5f %5.5f\n',i,p,err);
    end
end
fclose(fileID);
    