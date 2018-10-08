## remote

# get driver
curl -O https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.61-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb

# update to cuda 9.0
sudo apt-get update
sudo apt-get install cuda-9-0
sudo nvidia-smi -pm 1
sudo nvidia-smi -ac 2505,875 # performance optimziation from google suggestion

# add to environment variable
echo 'export CUDA_HOME=/usr/local/cuda' >> ~/.bashrc
echo 'export PATH=$PATH:$CUDA_HOME/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$CUDA_HOME/lib64' >> ~/.bashrc
source ~/.bashrc
nvidia-smi
