function y = dup2(x)
n = length(x);
y=0;
for i = drange(1:floor(n/2))
    y = y + 2*str2double(x(i))*str2double(x(n-i+1));
end
if mod(n,2)~=0
    y = y + str2double(x(ceil(n/2)))*str2double(x(ceil(n/2)));
end