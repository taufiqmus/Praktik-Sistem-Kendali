% define --> G1
num_g1 = [1];
den_g1 = [1 2];
G1 = tf(num_g1, den_g1);

% define --> G2
num_g2 = [1];
den_g2 = [1 2 2];
G2 = tf(num_g2, den_g2);

sys_s = series(G1, G2); %sistem serial/series
sys_p = parallel(G1, G2); %sistem parallel
sys_fneg = feedback(G1, G2); %sistem negative feedback
sys_fpos = feedback(G1, G2, 1); %sistem positive feedback