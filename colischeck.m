
function p=colischeck(x,y,z,x2,y2,z2,r1,r2,r3)

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
        
     
       
      
       
         d1=(r1*r1)+(r2*r2)+(r3*r3);
           d2=((r1-x0)*(r1-x0))+((r2-y0)*(r2-y0))+((r3-z0)*(r3-z0));
           d3=((r1-x)*(r1-x))+((r2-y)*(r2-y))+((r3-z)*(r3-z));
             d4=((x2-r1)*(x2-r1))+((y2-r2)*(y2-r2))+((z2-r3)*(z2-r3));
       % 5 d1=sqrt(d1);
       %  d2=sqrt(d2);
       %  d3=sqrt(d3);
       
       
       v1=d1-(s1*s1);
       v2=d2-(s1*s1);
       
       v1=sqrt(v1);
       v2=sqrt(v2);
         
         ck1=v1+v2;
         
            v4=d4-(s2*s2);
       v3=d2-(s2*s2);
       
       v4=sqrt(v4);
       v3=sqrt(v3);
         
         ck2=v3+v4;
         
           v5=d4-(s3*s3);
       v6=d3-(s3*s3);
       
       v5=sqrt(v5);
       v6=sqrt(v6);
         
         ck3=v5+v6;
         
          p=[ck1 ck2 ck3];

end