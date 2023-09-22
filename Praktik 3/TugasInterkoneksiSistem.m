% define --> G1
num_g1 = [1 2];
den_g1 = [1 4 3];
G1 = tf(num_g1, den_g1);

% define --> G2
num_g2 = [1];
den_g2 = [1 1];
G2 = tf(num_g2, den_g2);

% define --> G3
num_g3 = [1];
den_g3 = [1 2];
G3 = tf(num_g3, den_g3);

seri_1 = series(G1, G2);
HS = parallel(seri_1, G3);