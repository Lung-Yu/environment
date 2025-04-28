#ref -> https://nuc13us.wordpress.com/2015/02/01/installing-gdb-peda-in-ubuntu/
sudo apt-get install libncurses5-dev
git clone https://github.com/longld/peda.git ~/peda

sudo pip install peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

sudo apt-get remove gdb
wget http://security.ubuntu.com/ubuntu/pool/main/g/gdb/gdb_7.4-2012.02-0ubuntu2_amd64.deb
sudo dpkg -i gdb_7.4-2012.02-0ubuntu2_amd64.deb
sudo apt install gdb
