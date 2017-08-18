function d=obscheck(t,R,w,C)

l1=0.73;
       l2=0.35;
       l3=0.15;

       c1=0.05;
       c2=0.03;
       c3=0.02;
             
       nf=10000;
       d1=0;
       
 t(1)=(t(1)*22)/(180*7);
 t(2)=(t(2)*22)/(180*7);
 t(3)=(t(3)*22)/(180*7);

   
       z=l2*cos(t(2))+l3*cos(t(3)+t(2))+l1;
       y=cos(t(1))*(l2*sin(t(2))+l3*sin(t(3)+t(2)));
       x=sin(t(1))*(l2*sin(t(2))+l3*sin(t(3)+t(2)));
       
       x0=0;
       y0=0;
       z0=l1;
       
         
       z2=l2*cos(t(2))+l1;
       y2=cos(t(1))*l2*sin(t(2));
       x2=sin(t(1))*l2*sin(t(2));
       
       
       for j=1:w
           
       h=lindis(x,y,x,x2,y2,z2,C(j,1),C(j,2),C(j,3));
       ck=colischeck(x,y,x,x2,y2,z2,C(j,1),C(j,2),C(j,3));

       ht1=R(j)+c1;
       ht2=R(j)+c2;
       ht3=R(j)+c3;
       
       
           if(h(1)<=ht1 && ck(1)<=l1)
               d1=d1+nf;
           end
           
          
           if(h(2)<=ht2 && ck(2)<=l2)
               d1=nf+d1;
           end
           
            if(h(3)<=ht3 && ck(3)<=l3)
               d1=nf+d1;
            end
           
                
       end
       
        d=d1;

end