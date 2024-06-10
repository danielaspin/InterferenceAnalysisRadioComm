clear;
% Start measuring time
tic;


% IMPORT WITH NO POWER NO BEL
filenopowernobel = 'vector_NOPOWERNOBEL_100_000.txt';   % 100.000 events
filenopowernobel2 = 'vector_NOPOWERNOBEL_10_000.txt';   % 10.000 events
%filenopowernobel3 = 'vector_NOPOWERNOBEL_1000.txt';   % 1.000 events
%filenopowernobel4 = 'vector_NOPOWERNOBEL_2m.txt';   % 2m events

matrixnopowernobel = calculate_file_to_matrix(filenopowernobel, 1);
matrixnopowernobel2 = calculate_file_to_matrix(filenopowernobel2, 1);

% POWER
powermatrix = obtainPOWERmatrix();

% BEL
belmatrix = obtainBELmatrix();


% Stop the total time measurement temporarily
partialElapsedTime = toc;

% IMPORT NORMAL SIMULATION
filenormal = '2m_normal.txt';   % Pure Monte Carlo simulation of 2.000.000 events
% filenormal = '1m_normal.txt';   % Pure Monte Carlo simulation of 1.000.000 events
normalmatrix = calculate_file_to_matrix(filenormal, 1);

% Resume measuring time for the rest of the script
tic;


% CONVOLUTION PROCESS
first_convolve = convolve_matrices_withmatrixmulti_resolution(matrixnopowernobel, powermatrix, 1);
convolvedmatrix = convolve_matrices_withmatrixmulti_resolution(first_convolve, belmatrix, 1);

first_convolve2 = convolve_matrices_withmatrixmulti_resolution(matrixnopowernobel2, powermatrix, 1);
convolvedmatrix2 = convolve_matrices_withmatrixmulti_resolution(first_convolve2, belmatrix, 1);



% PMF
compareTwoDistributions(convolvedmatrix, normalmatrix);


% CDF 
plotCDFmatrix(convolvedmatrix, normalmatrix);



% Stop measuring time for the rest of the script
remainingElapsedTime = toc;

% Total elapsed time excluding the normalmatrix import
totalElapsedTime = partialElapsedTime + remainingElapsedTime;
fprintf('Total elapsed time excluding normalmatrix import: %.2f seconds\n', totalElapsedTime);