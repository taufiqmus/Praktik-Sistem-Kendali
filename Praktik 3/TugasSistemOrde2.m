w = [1, 3, 5, 7]

figure

for i=1:4
    num = [abs(w(i)+(j*2*w(i)))^2]
    den = [1 2*w(i) w(i)^2*(j*2*w(i))]
end