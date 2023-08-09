# .dotfiles

## Installation guide

Based on [this article](https://www.atlassian.com/git/tutorials/dotfiles).

```bash
git clone --bare git@github.com:nicklasbekkevold/.dotfiles.git $HOME/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot checkout
```

This command might fail because of existing config files. Back up or remove those files.

Finally do:

```dot config --local status.showUntrackedFiles no```
