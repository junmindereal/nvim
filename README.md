# Neovim setup

My neovim setup that I have found on youtube by [chrisatmachine](https://www.youtube.com/channel/UCS97tchJDq17Qms3cux8wcA)

## Installation

clone the repo by going to `./config`

```shell
cd ~/.config
```

```shell
git clone https://github.com/junmindereal/nvim.git nvim
```

Install `vim-plug`

```shell
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

open nvim and execute `PlugInstall`

```shell
nvim
```

In nvim env

```
PlugInstall
```

Install CoC Extensions

```
CocInstall coc-emmet coc-explorer coc-json coc-prettier coc-snippets coc-css coc-tsserver coc-vimlsp
```

---

If you have an issue with Python provider, Install Pythong. In my case I install Python 3.8

```shell
brew install python@3.8
```

Then install python provider for neovim

```shell
python3 -m pip install --user --upgrade pynvim
```

## Acknowledgements

[Christian Chiarulli](https://github.com/ChristianChiarulli)
