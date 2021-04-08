1. OSError: libcublas.so.10: cannot open shared object file: No such file or directory

```conda install -c anaconda cudatoolkit=10.1```

2. Could not load dynamic library 'libcudart.so.11.0'; dlerror: libcudart.so.11.0: cannot open shared object file: No such file or directory in tensorflow
   + Check tensorflow match with cuda version.[here](https://www.tensorflow.org/install/source#gpu)
   
3. How can i solve InvalidArgumentError: cycle_length must be > 0 when load tfrecords file
   + ref [here](https://stackoverflow.com/questions/59775373/how-can-i-solve-invalidargumenterror-cycle-length-must-be-0-when-load-tfrecor)
   + i encountered similar problem, on tensorflow 2.0, however,upgrading to 2.1 solves the issue

3. Process finished with exit code 137 (interrupted by signal 9: SIGKILL) out of RAM 
   + => GPU not activate.

4. Could not load dynamic library 'libcublas.so.10'; dlerror: libcublas.so.10: cannot open shared object file: No such file or directory
   + conda install -c anaconda cudatoolkit=10.1

5. Could not load dynamic library 'libcudnn.so.7'; dlerror: libcudnn.so.7: cannot open shared object file: No such file or directory
sudo ldconfig /usr/local/cuda/lib64

## TensorRT

1. Error in verifyHeader: 0 (Version tag does not match. Note: Current Version: 96, Serialized Engine Version: 87)
    
    ```If the engine was created and ran on different versions```
   
