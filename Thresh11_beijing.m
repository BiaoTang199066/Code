function [Num1,TTh]=Thresh(N2, NY,NB, NMdat,dist)

culm=4;
V=1000000*eye(culm);
m=zeros(1,culm)';
a0=1500000000;b0=200;
s0=b0;
V0=V;
M0=inv(V0)*s0/a0;
%M0=eye(12)
theta0=m;
P1=[];

for i=1:N2
    Ia1=zeros(1, N2);
    Ia2=zeros(1, N2);
    Ia1(1:i)=1;
    if i<N2
        Ia2(i+1:end)=1;
    end
    
    B1=Ia1.*1;%(dist).^(1/2);
    B2=Ia2.*1;%(dist).^(1/2);

    NB1=Ia1.*NB';
    NB2=Ia2.*NB';
  

    B=[B1',NB1',B2',NB2'];

    
    M1=B'*B+M0;
    
    %     if det(M1)<10^(-50)
    %         M1=M1+eps*eye(size(M0));
    %     end
    
    n1=a0+N2/2;
    theta1=pinv(M1)*(M0*theta0+B'*NY);
    
    D1=s0+((NY-B*theta1)'*NY+(theta0-theta1)'*M0*theta0)/2;
    
    %P1(i)=D1^(-n1)*(det(M1))^(-1/2)
    P1(i)=-n1*log(D1)-1/2*log(det(M1));

end
P1;
[Num1,TTh]=max(P1);