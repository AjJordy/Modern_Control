%% Matrizes 
A = [1 0;0 2]; % Formato canônico de Jordan %
% A = [-1 0;0 -2]; Estável
B = [0;0];
C = [0,0];
D = 0;

%% Nó instável 
eig(A); % Autovalores %
t = [0:0.01:4]; % Tempo %
x01 = [-0.01;0]; 
x02 = [-0.01;0.01];
x03 = [0.02;0.01];
x04 = [0.02;-0.01];

%% Condição inicial 
[y,t,x1] = initial(ss(A,B,C,D),x01,t); 
[y,t,x2] = initial(ss(A,B,C,D),x02,t);
[y,t,x3] = initial(ss(A,B,C,D),x03,t); 
[y,t,x4] = initial(ss(A,B,C,D),x04,t); 

%% Plotar %
figure(1);
plot(x1(:,1),x1(:,2));
hold();
plot(x2(:,1),x2(:,2));
plot(x3(:,1),x3(:,2));
plot(x4(:,1),x4(:,2));
figure(2);
plot(t,[x1(:,1) x1(:,2)]);
