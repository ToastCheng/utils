sudo apt-get install python3-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 

virtualenv toast --python=`which python3`
echo 'alias toast='. ~/toast/bin/activate'' >> ~/.bashrc
. ~/.bashrc
. ~/toast/bin/activate
pip install numpy pandas torch scipy matplotlib 

sudo apt-get install tmux
sudo apt-get install htop
