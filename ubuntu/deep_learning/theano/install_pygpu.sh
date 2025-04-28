sudo apt-get install cmake
sudo pip install cython

git clone https://github.com/Theano/libgpuarray.git
cd libgpuarray
mkdir Build
cd Build
cmake .. -DCMAKE_BUILD_TYPE=Release
make
sudo make install
cd ..

sudo python setup.py build
sudo python setup.py install 
