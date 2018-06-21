%% Matrizes
A=[1 2;-4 -3];
B=[1;2];
C=[1 1];
D = 0;

%% Operações
P=ctrb(A,B)
rank(P)  % |P| != 0, Controlável

Q=obsv(A,C)
rank(P)  % |Q| != 0 , Observável 

K=acker(A,B,[-3 -3])       % Controlador
Ko=acker(A',C',[-20 -20])' % Observador

% zeros(1,2) == [0 0]

AN = [A, -B*K; Ko*C, A-B*K-Ko*C] % 4° Ordem
BN = [B; B]
CN = [C,0,0]

[n,d] = ss2tf(AN,BN,CN,D)

eig(AN)
roots(d) % Raízes da equação   
roots(n) % Raízes da equação

[q,r]=deconv(d,[1,40,400])  % Divisão do polinômio

step(ss(AN,BN,CN,D)) % Entrada degral

x0=[0;0];
t=[0:0.01:10];
y1 = initial(ss(A,B,C,D),x0);
plot(y1)

r=ones(size(t));
y2 = lsim(ss(A,B,C,D),r,t,x0);
plot(t,y2)