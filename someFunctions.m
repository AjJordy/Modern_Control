%% Matrizes 
A = [-1 0 1;1 -2 0;0 0 -3];
B = [0;0;1];
C = [1 1 0];
D = 0;

X = [0 1;-1 -2];
N = eye(2);   % Matriz identidade

%% Opera��es
[n,d] = ss2tf(A,B,C,D)   % Vari�vel de estado para fun��o de transfer�ncia
% [A,B,C,D] = tf2ss(n,d) % Fun��o de transfer�ncia para vari�veis de estado
eig(A)  % Autovalores
poly(A) % Equa��o caracter�stica

S=-(X'*N+N*X) 
N=lyap(X,S)   % Lyapunov
eig(N)        % Autovalores