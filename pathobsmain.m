clear all;
clc;
q= 0.2320;
n= 0.1448;
k= 0.6305;

 l1=0.33;
 l2=0.203;
 l3=0.203;
 

eta=0;
maxit=5;
ti=[0 0 0];
tf=[0 0 0];

xi=[0 0 l1+l2+l3];
i=1;
 for i=1:maxit
     time=i;
 tf=DEalgnewd1(ti,q,n,k,time);
 %xi=transf(tf);
 
% e(1)=m-xi(1);
 %e(2)=n-xi(2);
 %e(3)=k-xi(3);
 
 %xf=setcordinate(xi,e,v);
 
 %xi=xf;
 tr=ti;
 ti=tf;
% angel(i,1)=ti(1);
 %angel(i,2)=ti(2);
 %angel(i,3)=ti(3);
 
 %goaldis(i)=distan1(tf,m,n,k);
 
 %energy(i)=poten(ti)+kinec(tf,tr);
 
 m1(i)=ti(1);
  m2(i)=ti(2);
  m3(i)=ti(3);
  m4(i)=tr(1);
  m5(i)=tr(2);
  m6(i)=tr(3);
 
     
 end
 
 
 
 %%
 for j=1:maxit
     
     tf1=[m1(j) m2(j) m3(j)];
     tr1=[m4(j) m5(j) m6(j)];
 % goaldis(j)=gapp(tf1,m,n,k);
 
 
       l1=0.73;
       l2=0.35;
       l3=0.15;
       
        tf1(1)=(tf1(1)*3.14)/180;
       tf1(2)=(tf1(2)*3.14)/180;
       tf1(3)=(tf1(3)*3.14)/180;
     

  z=l2*cos(tf1(2))+l3*cos(tf1(3)+tf1(2))+l1;
       y=cos(tf1(1))*(l2*sin(tf1(2))+l3*sin(tf1(3)+tf1(2)));
       x=sin(tf1(1))*(l2*sin(tf1(2))+l3*sin(tf1(3)+tf1(2)));
       
       f=[x y z];
      w=[q n k];
       g=f-w;
       g=power(g,2);
              
       d=g(1)+g(2)+g(3);
 goaldis(j)=d;
 energy(j)=poten(tf1)+kinec(tf1,tr1);
     
     m(1,j)=m1(j);
      m(2,j)=m2(j);
      m(3,j)=m3(j);
     
     
     
 end
 
 figure(3),plot(goaldis);
 figure(4),plot(energy);
 
 %%
 
 m=floor(m);
 tr=m';
 clear all;
clc;
q= 0.2320;
n= 0.1448;
k= 0.6305;

 l1=0.33;
 l2=0.203;
 l3=0.203;
 

eta=0;
maxit=5;
ti=[0 0 0];
tf=[0 0 0];

xi=[0 0 l1+l2+l3];
i=1;
 for i=1:maxit
     time=i;
 tf=DEalgnewd1(ti,q,n,k,time);
 %xi=transf(tf);
 
% e(1)=m-xi(1);
 %e(2)=n-xi(2);
 %e(3)=k-xi(3);
 
 %xf=setcordinate(xi,e,v);
 
 %xi=xf;
 tr=ti;
 ti=tf;
% angel(i,1)=ti(1);
 %angel(i,2)=ti(2);
 %angel(i,3)=ti(3);
 
 %goaldis(i)=distan1(tf,m,n,k);
 
 %energy(i)=poten(ti)+kinec(tf,tr);
 
 m1(i)=ti(1);
  m2(i)=ti(2);
  m3(i)=ti(3);
  m4(i)=tr(1);
  m5(i)=tr(2);
  m6(i)=tr(3);
 
     
 end
 
 
 
 %%
 for j=1:maxit
     
     tf1=[m1(j) m2(j) m3(j)];
     tr1=[m4(j) m5(j) m6(j)];
 % goaldis(j)=gapp(tf1,m,n,k);
 
 
       l1=0.73;
       l2=0.35;
       l3=0.15;
       
        tf1(1)=(tf1(1)*3.14)/180;
       tf1(2)=(tf1(2)*3.14)/180;
       tf1(3)=(tf1(3)*3.14)/180;
     

  z=l2*cos(tf1(2))+l3*cos(tf1(3)+tf1(2))+l1;
       y=cos(tf1(1))*(l2*sin(tf1(2))+l3*sin(tf1(3)+tf1(2)));
       x=sin(tf1(1))*(l2*sin(tf1(2))+l3*sin(tf1(3)+tf1(2)));
       
       f=[x y z];
      w=[q n k];
       g=f-w;
       g=power(g,2);
              
       d=g(1)+g(2)+g(3);
 goaldis(j)=d;
 energy(j)=poten(tf1)+kinec(tf1,tr1);
     
     m(1,j)=m1(j);
      m(2,j)=m2(j);
      m(3,j)=m3(j);
     
     
     
 end
 
 figure(3),plot(goaldis);
 figure(4),plot(energy);
 
 %%
 
 m=floor(m);
 tr=m';
 %roboarmmove(tr,i);  
 for h= 1:i
  roboarmmove(tr,h);  
end
