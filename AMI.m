clc;clear;
 close all;
 
 n=[1 0 1 0 0 1 1 1 0 0 1];
     xx = input('Input Voltage Level: ');
 f=1; var=1; 
 for m=1:length(n);
   if n(m)==1
       nn(m)= var*xx;
       if var==1
            var = -1;
       else
           var = 1;
       end
   else
       nn(m)=0;
   end
 end
 
 i=1;
 t=0:0.01:length(n);
 for j=1:length(t)
     if t(j)<=i
         y(j)=nn(i);
     else
         y(j)=nn(i);
         i=i+1;
     end
 end
 
 plot(t,y,'r');
 axis([0 length(n) -(xx+1) (xx+1)]);
 title('AMI');
 xlabel('Time');
 ylabel('Amplitude');
 grid on;
 
 
 %Decoding
ans_bit=zeros(1,totalBit);
p=1;
x=0;
for i=1:200:length(y)-1
   l=y(i);
  if l==-1
      x=x+1;
    ans_bit(x)=1;
  else
      x=x+1;
    ans_bit(x)=l; 
  end
end

 
disp(ans_bit);