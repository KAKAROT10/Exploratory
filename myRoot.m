function a = myRoot(x)
x = x*1000000;
h = int2str(x);
len = length(h);
a=0;
k=1;
remy=[];
% determine size of answer
if(mod(len,2)==0)
    size_of_a = len/2;
    temp = str2double(h(1))*10+str2double(h(2));
    for i = drange(1,9)                   %determines first digit of answer
        if(i*i>temp)
            a=i-1;
            break;
        else
            a=i;
        end
    end
    k = k+2;
else
    size_of_a = (len+1)/2;
    temp = str2double(h(1));
    for i = drange(1,4)                    %determine first digit of answer
        if(i*i>temp)
            a=i-1;
            break;
        end 
    end
    k = k+1;
end

t=1;                                                        %size of answer
divisor = 2*a;                                               %fixed divisor
remainder = temp-(a*a);
remy=[remy;remainder];
temp = remainder*10+str2double(h(k));
quotient = floor(temp/divisor);

if(quotient>9) 
    quotient = 9;
end
a = a*10 + quotient;                              %first 2 digits of answer 
t=t+1;
remainder = temp - divisor*quotient;
remy=[remy;remainder];
k = k+1;
%gamma=0;

while(k<=len)                               %determine answer after 2 digit
   a
   new_temp = remainder*10 + str2double(h(k));
   b=int2str(a);
   c=length(b);
   temp2 = new_temp - dup2(b(2:c));         %gross_dividend
   %temp2
   if(temp2<0)                                                  %exceptions
       vr1 = floor(a/10);
       a=a-1;
       vr2 = floor(a/10);
       if(vr1==vr2)
           remainder = remainder + divisor; %+ gamma*divisor*10;
           remy=[remy;remainder];
       else
           a = vr2;
           %quotient = mod(a,10);
           remy = remy(1:length(remy)-1);
           remainder = remy(length(remy)) + divisor;           
           %remy = remy(1:length(remy)-1);
           k=k-1;
           t=t-1;
       end
           %gamma=gamma+1;2       
   else
       %gamma=0;
       quotient = floor(temp2/divisor);
       if(quotient>9)
           quotient=9;
       end
       a = a*10 + quotient;
       remainder = temp2-divisor*quotient;
       remy=[remy;remainder];
       k=k+1;
       t=t+1;
   end
end
a=a/power(10,t-size_of_a);
%answer in decimal 
a = a/1000;