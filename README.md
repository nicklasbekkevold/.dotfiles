# .dotfiles

## Installation guide

Based on [this article](https://www.atlassian.com/git/tutorials/dotfiles).

```bash
git clone --bare git@github.com:nicklasbekkevold/.dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout
```

This command might fail because of existing config files. Back up or remove those files.

Finally do:

```config config --local status.showUntrackedFiles no```
