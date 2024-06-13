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

### convolve_matrices_withmatrixmulti_resolution(matrix1, matrix2, res)

**Description:**  
Returns the convoluted PMF matrix of `matrix1` and `matrix2` with resolution `res`.

**Syntax:**
```matlab
convolved_matrix = convolve_matrices_withmatrixmulti_resolution(matrix1, matrix2, res);
```

## Links
LinkedIn Page: http://linkedin.com/in/daniel-aspin-044703214


