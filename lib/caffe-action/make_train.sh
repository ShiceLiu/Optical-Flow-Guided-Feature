mkdir build
cd build
rm * -rf                                                                           
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda-7.5/lib64/cudnn5" 
OpenCV_DIR=/usr/ cmake -D CUDA_TOOLKIT_ROOT_DIR="/usr/local/cuda-7.5/" -DUSE_MPI=ON -DMPI_CXX_COMPILER="/usr/local/openmpi-1.8.5/bin/mpicxx" -DCUDA_USE_STATIC_CUDA_RUNTIME=OFF -DCUDNN_INCLUDE="/usr/local/cuda-7.5/include/cudnn5/" -DCUDNN_LIBRARY="/usr/local/cuda-7.5/lib64/cudnnv5/libcudnn.so" ..
make -j install  
