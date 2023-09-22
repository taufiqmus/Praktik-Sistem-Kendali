zeta = [0 0.5 1 1.5]; % variasi nilai faktor peredaman
wn = 1; % frekuensi natural = 1
figure
for i=1:4
    sys_zeta{i} = tf([wn^2],[1 2*zeta(i)*wn wn^2]); 
    % sistem dengan masing-masing faktor peredaman
    hold all
    step(sys_zeta{i},15)
    % tanggap langkah dari masing-masing sistem
end
legend('zeta=0','zeta=0.5', 'zeta=1', 'zeta=1.5')