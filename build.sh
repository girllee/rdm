#!bin/bash
# Program
#   build a c project
# History
# 2019/05/22        Asin        First release

test -e build/ || mkdir build
echo "mkdir build/"

test -e bin/ || mkdir bin
echo "mkdir bin/"

cd build/
cmake -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF -DMICROHTTPD_ENABLE=OFF ..
make