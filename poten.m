
function P=poten(t)

l1=0.73;
       l2=0.35;
       l3=0.15;
       
        t(1)=(t(1)*22)/(180*7);
       t(2)=(t(2)*22)/(180*7);
       t(3)=(t(3)*22)/(180*7);
      
       
       
        m1=5.4;
       m2=4.2;
       m3=3;
       
       
       
       g=10;
       
      
       
             
       P=m1*g*0.5*l1+m2*g*(l1+0.5*l2*cos(t(2)))+m3*g*(l1+l2*cos(t(2))+l3*0.5*cos(t(2)+t(3)));
end