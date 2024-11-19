%Ex34

syms k;     %declarar variavel p

%Matriz principal:
A=[1 3+4*k 20+2*k 0;7+k 5*k-31 0 0];

%declaração das matrizes 2x2 para o calculo dos b:
Ab1=[A(1) A(3);A(2) A(4)];
Ab2=[A(1) A(5);A(2) A(6)];
Ab3=[A(1) A(7);A(2) A(8)];

%calculo dos b:

b1=-det(Ab1)/A(2);
b2=-det(Ab2)/A(2);
b3=-det(Ab3)/A(2);

%Nova matriz principal:
B=[A(2) A(4) A(6);b1 b2 b3];

%declaração das matrizes 2x2 para o calculo dos c:

Bc1=[B(1) B(3);B(2) B(4)];
Bc2=[B(1) B(5);B(2) B(6)];

%calculo dos c:

c1=-det(Bc1)/B(2);
c2=-det(Bc2)/B(2);

%Nova matriz principal:
C=[B(2) B(4);c1 c2];

%declaração das matrizes 2x2 para o calculo dos d:

Cd1=[C(1) C(3);C(2) C(4)];

%calculo dos d:

d1=-det(Cd1)/C(2);

%Nova matriz principal:
D=[C(2) C(4);d1 0];

%declaração das matrizes 2x2 para o calculo dos e:

De1=[C(1) C(3);C(2) C(4)];

%calculo dos e:

e1=-det(De1)/D(2);