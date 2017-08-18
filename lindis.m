
function p=lindis(x,y,z,x2,y2,z2,r1,r2,r3)

l1=0.73;
       l2=0.35;
       l3=0.15;
       
         x0=0;
       y0=0;
       z0=l1;
       
     g1=y0*(z0-r3)-z0*(y0-r2);
       g2=-x0*(z0-r3)+z0*(x0-r1);
       g3=x0*(y0-r2)-y0*(x0-r1);
       
       s1=g1*g1+g2*g2+g3*g3;
       s1=sqrt(s1);
       s1=s1/l1;
       s1=abs(s1);
       
        g1=(y0-y2)*(z0-r3)-(z0-z2)*(y0-r2);
       g2=-(x0-x2)*(z0-r3)+(z0-z2)*(x0-r1);
       g3=(x0-x2)*(y0-r2)-(y0-y2)*(x0-r1);
       
       s2=g1*g1+g2*g2+g3*g3;
        s2=sqrt(s2);
        s2=s2/l2;
         s2=abs(s2);
        
       g1=(y-y2)*(z-r3)-(z-z2)*(y-r2);
       g2=-(x-x2)*(z-r3)+(z-z2)*(x-r1);
       g3=(x-x2)*(y-r2)-(y-y2)*(x-r1);
       
       
       s3=g1*g1+g2*g2+g3*g3;
        s3=sqrt(s3);
        s3=s3/l3;
         s3=abs(s3);
        
     
       
       p=[s1 s2 s3];
       

end