function sqr = mySquare(x)
x=x*1000000;
h=int2str(x);
n = length(h);
s=0;
sqr=0;
s = s+mod(duplex(str2double(h(n))),10);
sqr = sqr+s;
d=0;
f=1;

for i = drange(1:n-1)
    f=f*10;
    s=d;
    s=s+floor((duplex(mod(x,f))/10)+mod(duplex(mod(x,(10*f))),10));
    sqr=sqr+mod(s,10)*f;
    d=floor(s/10);
end

f=f*10;
g=1;
for i = drange(1:n-1)
    s=d;
    s=s+floor(duplex(floor(x/g))/10)+mod(duplex(floor(x/(10*g))),10);
    g=g*10;
    sqr=sqr+mod(s,10)*f;
    f=f*10;
    d=floor(s/10);
end
sqr
d=d+floor(duplex(str2double(h(1)))/10);
sqr = sqr + d*f;
sqr
sqr = sqr/1000000000000;