# InterferenceAnalysisRadioComm
This is my development in MATLAB for an alternative method of analyzing interference using both Spectrum Engineering Advanced Monte Carlo Analysis Tool (SEAMCAT) simulation and convolution calculations on independent parameters of the interfering link.


## Functions

### calculate_histogram(X, res)

**Description:**  
Returns the PMF matrix from the data vector `X` with the specified resolution `res`.

**Syntax:**
```matlab
PMFmatrix = calculate_histogram(X, res);
```

### calculate_file_to_matrix(file, res)

**Description:**  
Returns the PMF matrix by extracting data from column 2 of the file `file` with the specified resolution `res`.

**Syntax:**
```matlab
PMFmatrix = calculate_file_to_matrix(file, res);
```

### calculateMeanStd(PMFmatrix)

**Description:**  
Prints out the standard deviation and mean value of the PMF matrix `PMFmatrix`.

**Syntax:**
```matlab
calculateMeanStd(PMFmatrix);
```

### obtainPOWERmatrix()

**Description:**  
Returns the PMF matrix of the power distribution with resolution set to 1, derived from the data in a specified file.

**Syntax:**
```matlab
powermatrix = obtainPOWERmatrix();
```

### obtainBELmatrix()

**Description:**  
Returns the PMF matrix of the Building Entry Loss(BEL) distribution with resolution set to 1, derived from the data in a specified file.

**Syntax:**
```matlab
belmatrix = obtainBELmatrix();
```

### positiveToNegativeMatrix(matrix_to_be_flipped)

**Description:**  
Returns the mirrored PMF matrix of `matrix_to_be_flipped`.

**Syntax:**
```matlab
flipped_matrix = positiveToNegativeMatrix(matrix_to_be_flipped);
```

### rescale_matrix(matrix, res)

**Description:**  
Returns the rescaled matrix of `matrix` with resolution `res`.

**Syntax:**
```matlab
rescaled_matrix = rescale_matrix(matrix, res);
```

### PMFmatrix_toCDFmatrix(pmf_matrix)

**Description:**  
Returns the CDF matrix of `pmf_matrix`.

**Syntax:**
```matlab
cdf_matrix = PMFmatrix_toCDFmatrix(pmf_matrix);
```

### convolve_matrices_withmatrixmulti_resolution(matrix1, matrix2, res)

**Description:**  
Returns the convoluted PMF matrix of `matrix1` and `matrix2` with resolution `res`.

**Syntax:**
```matlab
convolved_matrix = convolve_matrices_withmatrixmulti_resolution(matrix1, matrix2, res);
```

### compareTwoDistributions(first_dist, second_dist)

**Description:**  
Displays the PMF matrices `first_dist` and `second_dist` on the same figure.

**Syntax:**
```matlab
compareTwoDistributions(first_dist, second_dist);
```

### plotCDFmatrix(PMFmatrix, optional1)

**Description:**  
Displays the CDF of the PMF matrices `PMFmatrix` and `optional1` (optionally) on the same figure.

**Syntax:**
```matlab
plotCDFmatrix(PMFmatrix, optional1);
```

### plotCCDFfromPMFmatrix(PMFmatrix, varargin)

**Description:**  
Displays the CCDF of the PMF matrix `PMFmatrix` along with additional PMF matrices from `varargin` on the same figure.

**Syntax:**
```matlab
plotCCDFfromPMFmatrix(PMFmatrix, PMFmatrix2, ...);
```



## Links
LinkedIn Page: http://linkedin.com/in/daniel-aspin-044703214
Thesis Report: https://kth.diva-portal.org/smash/record.jsf?pid=diva2%3A1885507&dswid=-3993


