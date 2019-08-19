sudo apt-get install python-pip python-dev
pip install --upgrade pip
#Tensorflow-GPU version 1.2 using Cudnn 5.1
#But Tensorflow-GPU version 1.3 up using Cudnn 6.0
sudo pip install tensorflow-gpu==1.2



#test tensorflow install result
python -c "import tensorflow as tf;tf.Session()"

