# Dotfiles repository

All the dotfiles stored in a repo

## How to manage these

The easiest way is to manage the dotfiles automatically is with `stow`

```
brew install stow
```

then clone this repo in the $HOME directory

```
git clone https://github.com/ivanovaleksandar/dotfiles.git
```

This will clone the repo in $HOME/dotfiles. This way, with stow we can staticly link all the files in the dotfiles directory to it's parent.
In this case, the parent is the $HOME directory and that is where the dotfiles should live.
