# config script for linux os, includes oh-my-zsh, emacs and the third tools
#!/bin/sh
printf 'Install zsh:\n'
sudo apt-get install zsh -y
chsh -s /bin/zsh
reboot
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
source ~/.zshrc

printf 'Install emacs:\n'
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt upgrade
sudo apt-get install emacs27-nox -y

printf 'Emacs version:\n'
emacs --version

printf 'Config Emacs:\n'
cd ~
git clone https://github.com/redguardtoo/emacs.d.git .emacs.d

printf 'Install gcc:\n'
sudo apt-get install gcc -y

printf 'Install g++:\n'
sudo apt-get install g++ -y

printf 'Install cgdb n'
sudo apt-get install cgdb -y

printf 'Install cmake:\n'
sudo apt-get install cmake -y

printf 'Install clang:\n'
sudo apt-get install clang -y

printf 'Install xsel:\n'
sudo apt-get install xsel -y

printf 'Install xclip:\n'
sudo apt-get install xclip -y

printf 'Install pandoc:\n'
sudo apt-get install pandoc -y

printf 'Install global:\n'
sudo apt-get install global -y

printf 'Install ctags:\n'
sudo apt-get install ctags -y

printf 'Install sbcl:\n'
sudo apt-get install sbcl -y

printf 'Install shellcheck:\n'
sudo apt-get install shellcheck -y

printf 'Install Rust and ripgrep:\n'
curl https://sh.rustup.rs -sSf | sh
source ~/.cargo/env
cargo install ripgrep