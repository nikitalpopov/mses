clear all;

syms x a c alpha;

func(x, a, c) = a + (x / c)^4; % весовая функция

eps = 0.0001;
iter = 10;

A = [0, 0, 2, 3;
     1, 0, 2, 0;
     0, 0, 0, 1;
     1, 2, 1, 0];
 
C = [0, 0, 2, 3;
     1, 0, 2, 0;
     0, 0, 0, 1;
     1, 2, 1, 0];
 
D = [0, 40, 0, 0;
     0, 0, 70, 0;
     0, 80, 0, 0;
     0, 0, 0, 0];
 
E = [0, 0, 1, 1;
     1, 0, 1, 0;
     0, 0, 0, 1;
     1, 1, 1, 0];

result = main(A, C, D, E, eps, iter, func)

