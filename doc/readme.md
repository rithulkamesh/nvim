# Getting Started

## ⚒ Requirements

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - I personally like Hack Nerd Font
- Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using)
- A clipboard tool is necessary for the integration with the system clipboard
- Brew GCC on apple devices
- Node.js and npm installed

Brew GCC should override apple gcc in macbooks. Easiest method I found is to prioritize `/usr/local/bin` over `/usr/bin` in the PATH variable and Symlinking `/opt/homebrew/bin/gcc-14` as gcc in that path.

## 👋 Installation

This configuration has been tested only on unix devices. Please open a PR if tested and working on windows.

`git clone --depth 1 git@github.com:rithulkamesh/nvim.git ~/.config/nvim`

## ⌨️ Keybinds

Please refer to the keybinds documentation @ [./keymaps.md](./keymaps.md)

---

This README has been adapted from [Astronvim Documentation](https://astronvim.com/) and tailored to work with My Neovim configuration.
