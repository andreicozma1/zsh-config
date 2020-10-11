cd $HOME/Downloads

sudo apt update &&
sudo apt install vim zip gnome-tweaks gnome-shell-extensions gimp wget curl gdebi-core python3 python3-pip

# Install Build Tools
sudo apt-get install git-core gnupg flex bison gperf build-essential zip unzip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc genisoimage android-tools-adb android-tools-fastboot minicom m4 liblz4-tool libssl-dev

# Install Git & Git-LFS
sudo apt install git git-lfs
git config --global user.name "Andrei Cozma"
git config --global user.email "andreig992@gmail.com"
git config --global credential.helper store
git config --global core.editor vim

# Install ZSH
sudo apt install zsh &&
chsh -s $(which zsh)

# Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install PowerLevel10K
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf &&
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf &&
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf &&
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf &&
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Install McMojave Theme
sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf &&
sudo apt install sassc libcanberra-gtk-module libglib2.0-dev &&
git clone https://github.com/vinceliuice/Mojave-gtk-theme mcmojave &&
cd mcmojave &&
./install.sh

# Install JetBrains Toolbox
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.18.7455.tar.gz?_ga=2.2713136.184308517.1602361323-1363800983.1602361323
# Install Chrome
sudo apt install gdebi-core wget &&
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo gdebi google-chrome-stable_current_amd64.deb

# Install VSCode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg &&
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ &&
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' &&
sudo apt-get install apt-transport-https &&
sudo apt-get update &&
sudo apt-get install code # or code-insiders

# Install Teams
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add - &&
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list' &&
sudo apt-get update &&
sudo apt-get install teams

# Install Skype
sudo snap install skype --classic

# Install Barrier
sudo snap install barrier
