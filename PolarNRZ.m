 clc;clear;
 close all;
 
 n=[0 1 0 1 1 0 1];
     xx = input('Input Voltage Level: ');
 f=1;
 for m=1:length(n);
   if n(m)==1
       nn(m)=1*xx;
   else
       nn(m)=-1*xx;
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
     endif
 endfor
 
 plot(t,y,'k');
 axis([0 length(n) -(xx+2) (xx+2)]);
 title('NRZ bipolar ');
 xlabel('Time');
 ylabel('Amplitude');
 
 
 
 
 