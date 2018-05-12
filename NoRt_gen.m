%% PLANER NON-ORTHOGONAL PROBLEMS
% Input
clc;
clear;
n=1;   % Number of members
I=[1];   %Moment of inertia in m4
L=[4];   %length in m
A=[1];   %Member in number 
theta=[0];   %Angle in degrees
uu=0;   %Number of unrestrained degree of freedom
ur=5;   %Number of restrained degree of freedom
uul=[];   %Global labels of unrestrained degree of freedom
url=[1,2,3,4,5];   %Global labels of restrained degree of freedom
l1=[2,3,4,5,6];   %Global labels of member 1

l=[l1];
dof=uu+ur;   %Degree of freedom
Ktotal=zeros(dof);
Tt1=zeros(6,6,n);
fem=zeros(6,1,n);
fem(:,:,1)=[0; 0; 0; 0; 0; 0];   %Local fixed end moments of member 1
fem(:,:,2)=[0; 0; 0; 0; 0; 0];  %Local fixed end moments of member 2
fem(:,:,3)=[0; 0; 0; 0; 0; 0];  %Local fixed end moments of member 3
kall=zeros(6,6,n);
Ttall=zeros(6,6,n);
fembar=zeros(6,1,n);

%% Rotation co-efficient for each member
rc1=4.*I./L;
rc2=2.*I./L;
rc3=A./L;
cx=cosd(theta);
cy=sind(theta);

%% Stiffness matrix 4 by 4 (Axial deformation neglected)
for i=1:n
    Knew=zeros(dof);
    k1=[rc1(i);rc2(i);(rc1(i)+rc2(i))/L(i); (-(rc1(i)+rc2(i))/L(i));0;0];
    k2=[rc2(i);rc1(i);(rc1(i)+rc2(i))/L(i);(-(rc1(i)+rc2(i))/L(i));0;0];
    k3=[(rc1(i)+rc2(i))/L(i);(rc1(i)+rc2(i))/L(i); (2*(rc1(i)+rc2(i))/(L(i)^2));(-2*(rc1(i)+rc2(i))/(L(i)^2));0;0];
    k4=-k3;
    k5=[0;0;0;0;rc3(i);-rc3(i)];
    k6=[0;0;0;0;-rc3(i);rc3(i)];
    K=[k1,k2,k3,k4,k5,k6];
    fprintf('Member Number=');
    disp(i);
    fprintf('Local Stiffness matrix of member, [K]=');
    disp(K);
   T1=[1;0;0;0;0;0];
   T2=[0;1;0;0;0;0];
   T3=[0;0;cx(i);0;cy(i);0];
   T4=[0;0;0;cx(i);0;cy(i)];
   T5=[0;0;-cy(i);0;cx(i);0];
   T6=[0;0;0;-cy(i);0;cx(i)];
   T=[T1,T2,T3,T4,T5,T6];
   fprintf('Transformation matrix of member, [T]=\n');
    disp(T);
    Ttr=T';
    fprintf('Transformation matrix Transpose, [T]=\n');
    disp(Ttr);
    Kg=Ttr*K*T;
    fprintf('Global Matrix, [K global]=\n');
    disp(Kg);
   
        for p=1:6
            for q=1:6
            Knew((l(i,p)),(l(i,q)))=Kg(p,q);
         end
        end
    Tt1(:,:,i)=T;
    Ktotal=Ktotal + Knew;
    kall(:, :, i)=Kg;
    Ttall(:, :, i)=T;
    fembar(:, :, i)=Tt1(:,:,i)'*fem(:,:,i);
  
end
fprintf('Stiffness matrix of complete structure,[Ktotal]=\n');
disp(Ktotal);
Kunr=zeros(uu);
for x=1:uu
    for y=1:uu
        Kunr(x,y)=Ktotal(x,y);
    end
end
fprintf('unrestrained stiffness sub-matrix,[Kuu]=\n');
disp(Kunr);
KuuInv=inv(Kunr);
fprintf('Inverse of unrestrained stiffness sub-matrix,[KuuInverse]=\n');
disp(KuuInv);

%% Creation of joint load vector
jl=[0; 0; 0; 0; 0; 0];   %Values given in kN or kNm
jlu=[0; 0; 0];   %Load vector in unrestrained dof
delu=KuuInv*jlu;
fprintf('Joint Load Vector,[jl]=\n');
disp(jl);
fprintf('Unrestrained displacement,[DelU]=\n');
disp(delu);
delr=[0;0;0;0;0;0;0];
del=zeros(dof,1);
del=[delu;delr];
deli=zeros(6,1);
for i=1:n
    for p=1:6
        deli(p,1)=del((l(i,p)),1);
    end
    mbar1=(kall(:,:,i) * deli)+fembar(:,:,i);
    
        delbar1=deli;
        fprintf('Member Number=');
        disp(i);
        fprintf('Global displacement matrix [DeltaBar]=\n');
        disp(delbar1)
         fprintf('Global End moment matrix [MBar]=\n');
         disp(mbar1);
         
 
end

    
    
    