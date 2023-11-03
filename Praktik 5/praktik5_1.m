% Define the system matrix A
A = [-2 1; -1 -3];

% Calculate eigenvalues
eigenvalues = eig(A);

% Check stability
if all(real(eigenvalues) < 0)
    disp('The system is stable.');
else
    disp('The system is unstable.');
end

% Display eigenvalues
disp('Eigenvalues:');
disp(eigenvalues);
