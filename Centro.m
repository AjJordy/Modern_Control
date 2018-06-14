%% Matrizes 
A = [0 1;-4 0];
B = [0;0];
C = [0,0];
D = 0;

%% Centro 
eig(A); % Autovalores %
t = [0:0.01:4]; % Tempo %
x01 = [0 0.5]'; % ' Transposta %
x02 = [0 1]';

%% Condição inicial 
[y,t,x1] = initial(ss(A,B,C,D),x01,t); 
[y,t,x2] = initial(ss(A,B,C,D),x02,t); 

%% Plotar %
figure(1);
plot(x1(:,1),x1(:,2));
hold();
plot(x2(:,1),x2(:,2));
figure(2);
plot(t,[x1(:,1) x1(:,2)]);
