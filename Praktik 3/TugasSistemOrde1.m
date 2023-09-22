T = [1 3 5 7];

figure

for i=1:4
    num = [1];
    den = [T(i) 1];
    
    HS{i} = tf(num, den);
    figure(1)
    hold all
    step(HS{i})
end    

legend('T=1','T=3','T=5','T=7');
