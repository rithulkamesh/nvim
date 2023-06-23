# Getting Started


## ⚒ Requirements
- [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - I personally like Hack Nerd Font 
- Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using)
- A clipboard tool is necessary for the integration with the system clipboard 
- [Packer.nvim](https://github.com/wbthomason/packer.nvim#quickstart)
- Brew GCC on apple devices

Brew GCC should override apple gcc in macbooks. Easiest method I found is to prioritize `/usr/local/bin` over `/usr/bin` in the PATH variable and Symlinking `/opt/homebrew/bin/gcc-13` as gcc in that path.

## 👋 Installation

This configuration has been tested only on unix devices. Please open a PR if tested and working on windows.

```git clone --depth 1 https://github.com/rithulkamesh/nvim.git ~/.config/nvim```

## 📦 Setup

1. Open up neovim and type in `:PackerInstall` : This will install all the necessary plugins required for the configuration to run.
2. Quit and reopen neovim to have a configuration ready.

## ⌨️ Keybinds

## Custom Keybinds

The leader is set to `\` in the config.<br />
All references to `<leader>` should be inferred as `\`.

|Function|Keybind|
|---|---|
|Format the current working file|`<leader>f`|
|Toggle a floating terminal|`<leader>tf`|
|Open the File tree|`<leader>e`|
|Open buffer list|`<leader>b`|
|Fuzzy find in current buffer|`<leader>fd`|
|Help Tags (Telescope)|`<leader>ht`|
|Live grep in open buffers|`<leader>rg`|
|Search open buffers|`<leader>fb`|
|Open list of git branches|`<leader>gb`|
|Open git stash in telescope|`<leader>glb`|

---
This README has been adapted from [Astronvim Documentation](https://astronvim.com/) and tailored to work with My Neovim configuration.
