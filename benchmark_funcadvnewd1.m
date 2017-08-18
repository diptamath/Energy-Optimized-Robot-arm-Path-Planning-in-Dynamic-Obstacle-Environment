
function f=benchmark_funcadvnewd1(t,ti,x1,y1,z1,i)
       l1=0.73;
       l2=0.35;
       l3=0.15;
       
       w=2;
             
       C=[0.0235 0 0;0 0 0.0098];
       
       R=[0.005 0.003];
            
       v=[0.02 0.001 0.03;0 0 0.006];
       
       for u=1:w
          C(u,1)= C(u,1)+v(u,1)*i;
          C(u,2)= C(u,2)+v(u,2)*i;
          C(u,3)= C(u,3)+v(u,3)*i;
          
       end
       
       
       avd=obscheck(t,R,w,C);
       
       
        t(1)=(t(1)*22)/(180*7);
       t(2)=(t(2)*22)/(180*7);
       t(3)=(t(3)*22)/(180*7);
       t(4)=(t(4)*22)/(180*7);
       t(5)=(t(5)*22)/(180*7);
       t(6)=(t(6)*22)/(180*7);
      
       
        m1=5.4;
       m2=4.2;
       m3=3;
       
       I1=(m1+m2)*0.33*(l2*sin(t(2))+l3*sin(t(3)+t(2)))*(l2*sin(t(2))+l3*sin(t(3)+t(2)));
       I2=0.33*m2*l2*l2+0.33*m3*l3*l3+m3*l2*l2;
       I3=0.33*m3*l3*l3;
       
       g=10;
       
      
       
       z=l2*cos(t(2))+l3*cos(t(3)+t(2))+l1;
       y=cos(t(1))*(l2*sin(t(2))+l3*sin(t(3)+t(2)));
       x=sin(t(1))*(l2*sin(t(2))+l3*sin(t(3)+t(2)));
       
       
       g1=x1-x;
       g2=y1-y;
       g3=z1-z;
       
       d=g1*g1+g2*g2+g3*g3;
       
       P=m1*g*0.5*l1+m2*g*(l1+0.5*l2*cos(t(2)))+m3*g*(l1+l2*cos(t(2))+l3*0.5*cos(t(2)+t(3)));
       
       K= I1*0.5*(t(4)*t(4))+I2*0.5*(t(5)*t(5))+I3*0.5*(t(6)*t(6));
       
    
    P1=m1*g*0.5*l1+m2*g*(l1+0.5*l2*cos(ti(2)))+m3*g*(l1+l2*cos(ti(2))+l3*0.5*cos(ti(2)+ti(3)));
    
    Pi=abs(P-P1);
    
       f=Pi+K+d+avd;
  
       
end