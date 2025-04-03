# dotfiles

## Installation

1. Recursive clone with submodules:
```
git clone --recurse-submodules git@github.com:btomwhitehead/dotfiles.git
```

2. Copy `dotfiles/` contents into home directory:
```
cp -r dotfiles/ ~/
```

3. Install [homerew](https://brew.sh/).

4. Install `Brewfile` contents:
```
brew bundle install
```

5. Install `Brewfile.personal` contents:
```
brew bundle install --file Brewfile.personal
```

6. Install vim plugins with: `:PluginInstall`

## Settings

TODO

## Other apps

TODO
