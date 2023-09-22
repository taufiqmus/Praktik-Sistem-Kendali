sys_1 = zpk([],[-1],1); % sistem dengan pole pada titik –1
sys_2 = zpk([],[-2],2); % sistem dengan pole pada titik –2

figure(1) % tanggap impuls dari kedua sistem
hold all
impulse(sys_1) 
impulse(sys_2)
figure(2) % tanggap fungsi langkah dari kedua sistem
hold all
step(sys_1)
step(sys_2)