# Dot Files
This repository contains the configuration files for some of the programs I use. There is also a handy setup script that should configure everything for you.

## Usage
To use these configuration files you first have to make sure you have the following programs installed:
- fish
- neovim

Once you have these programs installed you can clone the repository into a place you like and run the setup script. The setup script will detect existing configuration files and leave them alone. This means that if you are replacing an old configuration you need to delete it first.
```bash
# Clone the repository into the folder .dots in your home directory.
git clone https://github.com/KalleStruik/dotfiles.git ~/.dots

# Execute the install script.
cd ~/.dots
bash setup.sh
```

