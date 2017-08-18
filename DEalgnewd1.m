function  tf=DEalgnewd1(ti,m,n,k,itr)


global initial_flag;
initial_flag=0;
smin=[-160,-110,-135,-100,-100,-100];
smax=[160,110,135,100,100,100];
NP=150;
D=6;
CR=0.96;
MAXITER=100;

%INITIALIZATION%
for i=1:NP
    
    solution(i,1)=smin(1)+unifrnd(0,1).*(smax(1)-smin(1));
    solution(i,2)=smin(2)+unifrnd(0,1).*(smax(2)-smin(2));
    solution(i,3)=smin(3)+unifrnd(0,1).*(smax(3)-smin(3));
end
for i=1:NP
    
    solution(i,4)= solution(i,1)-ti(1);
    solution(i,5)= solution(i,2)-ti(2);
    solution(i,6)= solution(i,3)-ti(3);
    
    fitness(i)=benchmark_funcadvnewd1(solution(i,1:D),ti,m,n,k,itr);
    initial_flag=0;
end;
[mincost,index]=min(fitness);
best(1:D)=solution(index,1:D);

for iter=1:MAXITER
    for i=1:NP
        
        x=[0,0,0];
        %MUTATION AND CROSS-OVER%
        while (x(1)==x(2)||x(2)==x(3)||x(3)==x(1)||x(1)==i||x(2)==i||x(3)==i)
            x=randint(1,3,[1,NP]);
        end;
        
        for j=1:D
            
            if(unifrnd(0,1)<=CR)
                trial(j)=solution(x(1),j)+unifrnd(0,1)*(solution(x(2),j)-solution(x(3),j));
                
                if(trial(j)>smax(j))
                    trial(j)=smax(j);
                end;
                
                if(trial(j)<smin(j))
                    trial(j)=smin(j);
                end;
            
            else
                trial(j)=solution(i,j);
            end;
        
        end;
        
        f=benchmark_funcadvnewd1(trial(1:D),ti,m,n,k,itr);
        
        %SELECTION%
        if(f<fitness(i))
            
            solution(i,1:D)=trial(1:D);
            fitness(i)=f;
            
            if(f<mincost)
                mincost=f;
                best(1:D)=trial(1:D);
            end;
        
        end;
    
    end;
    
    disp(mincost);
    mc(iter)=mincost;
end;

plot(mc);

  


tf=best;
disp(tf);
disp(distan1(tf,m,n,k))



end