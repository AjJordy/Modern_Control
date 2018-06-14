%% Matrizes 
A = [1 0;0 -1]; % Repulsão no eixo horizontal e Atração no vertical %
B = [0;0];
C = [0,0];
D = 0;

%% Sela
eig(A); % Autovalores 
t = [0:0.01:4];  % Tempo 
x01 = [0.02;0];  % Foge da origem  
x02 = [-0.01;1]; 
x03 = [0.02;1]; 
x04 = [0;-1];    % Vai p/ origem 
x05 = [-0.01;-1];

%% Condição inicial 
[y,t,x1] = initial(ss(A,B,C,D),x01,t); 
[y,t,x2] = initial(ss(A,B,C,D),x02,t);
[y,t,x3] = initial(ss(A,B,C,D),x03,t); 
[y,t,x4] = initial(ss(A,B,C,D),x04,t); 
[y,t,x5] = initial(ss(A,B,C,D),x05,t); 

%% Plotar %
figure(1);
plot(x1(:,1),x1(:,2));
hold();
plot(x2(:,1),x2(:,2));
plot(x3(:,1),x3(:,2));
plot(x4(:,1),x4(:,2));
plot(x5(:,1),x5(:,2));
figure(2);
plot(t,[x1(:,1) x1(:,2)]);

% Inserir direção das setas
for i=1:400,
    dx(i)=x3(i+1,1)-x3(i,1);
    dy(i)=x3(i+1,2)-x3(i,2);
end
dx(401)=0;
dy(401)=0;
quiver(x3(:,1),x3(:,2),dx',dy',0);