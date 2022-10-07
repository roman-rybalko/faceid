#!/usr/bin/python3

import sys
import os
import nbformat
from nbconvert.preprocessors import ExecutePreprocessor, CellExecutionError

notebook_filename = sys.argv[1]
notebook_filename_out = sys.argv[2]
work_dir = sys.argv[3]
timeout = int(os.getenv('CELL_TIMEOUT', 18000))

print(f'in:  {notebook_filename}')
print(f'out: {notebook_filename_out}')
print(f'wd:  {work_dir}')
print(f'ct:  {timeout}')

with open(notebook_filename) as f:
    nb = nbformat.read(f, as_version=4)

ep = ExecutePreprocessor(timeout=timeout, kernel_name='python3')

try:
    ep.preprocess(nb, {'metadata': {'path': work_dir}})
finally:
    with open(notebook_filename_out, mode='w', encoding='utf-8') as f:
        nbformat.write(nb, f)
