# Pass selection experiment for ICCAD2022

These scripts where used to generate Figure 4 of our [ICCAD2022](https://ieeexplore.ieee.org/document/10069805) paper.

```
@inproceedings{10.1145/3508352.3549424,
  author = {Bohm Agostini, Nicolas and Curzel, Serena and Amatya, Vinay and Tan, Cheng and Minutoli, Marco and Castellana, Vito Giovanni and Manzano, Joseph and Kaeli, David and Tumeo, Antonino},
  title = {An MLIR-Based Compiler Flow for System-Level Design and Hardware Acceleration},
  year = {2022},
  isbn = {9781450392174},
  publisher = {Association for Computing Machinery},
  address = {New York, NY, USA},
  doi = {10.1145/3508352.3549424},
  booktitle = {Proceedings of the 41st IEEE/ACM International Conference on Computer-Aided Design},
  articleno = {6},
  numpages = {9},
  keywords = {high-level optimizations, compilers, MLIR, HLS},
  location = {San Diego, California},
  series = {ICCAD '22}
}
```

## Requirements

The ipynb scripts require a valid installation of:

- mlflow
- docker (script will use a docker image that should include the bins below)
  - bambu
  - soda-opt
  - mlir-translate
  - opt-10
  - clang-10

# How to run

See [selection.ipynb](selection.ipynb) file.

Once experiments are executed, use the following command to see the results:

```
mlflow ui --port 5000
```

