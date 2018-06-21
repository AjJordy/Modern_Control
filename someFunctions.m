%% Matrizes 
A = [-1 0 1;1 -2 0;0 0 -3];
B = [0;0;1];
C = [1 1 0];
D = 0;

X = [0 1;-1 -2];
N = eye(2);   % Matriz identidade

%% Operações
[n,d] = ss2tf(A,B,C,D)   % Variável de estado para função de transferência
% [A,B,C,D] = tf2ss(n,d) % Função de transferência para variáveis de estado
eig(A)  % Autovalores
poly(A) % Equação característica

S=-(X'*N+N*X) 
N=lyap(X,S)   % Lyapunov
eig(N)        % Autovalores