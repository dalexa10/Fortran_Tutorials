import numpy as np
from square_array_f90_mod import square_array_f90
import time

# Create a simple array
arr = np.array([1, 2, 3, 4, 5], dtype=float)

# Square the array with python and time it
python_start = time.time()
arr_sq_py = arr ** 2
python_end = time.time()

# Square the array with numpy and time it
numpy_start = time.time()
arr_sq_np = np.square(arr)
numpy_end = time.time()

# Square the array with compiled code and time it
compiled_start = time.time()
arr_sq_cc = square_array_f90(arr)
compiled_end = time.time()

# Print the results
print('Python: ' + str(python_end - python_start))
print('Numpy: ' + str(numpy_end - numpy_start))
print('Compiled: ' + str(compiled_end - compiled_start))
