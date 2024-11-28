# Keybindings Documentation

Leader key: `\`

## General Navigation & Commands

| Keybinding  | Description                            |
| ----------- | -------------------------------------- |
| `<C-k>`     | Move to previous suggestion/result     |
| `<C-j>`     | Move to next suggestion/result         |
| `<C-b>`     | Scroll documentation up                |
| `<C-f>`     | Scroll documentation down              |
| `<C-Space>` | Show completion suggestions            |
| `<C-e>`     | Close completion window                |
| `<CR>`      | Confirm completion (without selecting) |

## Telescope (Fuzzy Finding)

| Keybinding | Description                                           |
| ---------- | ----------------------------------------------------- |
| `\ff`      | Fuzzy find files in current working directory         |
| `\fr`      | Fuzzy find recent files                               |
| `\fs`      | Find string in current working directory              |
| `\fc`      | Find string under cursor in current working directory |
| `\fd`      | Fuzzy find in current buffer                          |
| `\ht`      | Search help tags                                      |
| `\rg`      | Live grep search                                      |
| `\fb`      | List buffers                                          |
| `\ft`      | Find TODOs                                            |
| `\sf`      | Search Functions across project                       |

## File Explorer

| Keybinding | Description                   |
| ---------- | ----------------------------- |
| `\e`       | Toggle NvimTree file explorer |

## Todo Comments Navigation

| Keybinding | Description                   |
| ---------- | ----------------------------- |
| `]t`       | Jump to next todo comment     |
| `[t`       | Jump to previous todo comment |

## LSP (Language Server Protocol)

| Keybinding | Description                                 |
| ---------- | ------------------------------------------- |
| `gR`       | Show LSP references                         |
| `gD`       | Go to declaration                           |
| `gd`       | Show LSP definitions                        |
| `gi`       | Show LSP implementations                    |
| `gt`       | Show LSP type definitions                   |
| `\ca`      | See available code actions                  |
| `\rn`      | Smart rename                                |
| `\D`       | Show buffer diagnostics                     |
| `\d`       | Show line diagnostics                       |
| `[d`       | Go to previous diagnostic                   |
| `]d`       | Go to next diagnostic                       |
| `K`        | Show documentation for what is under cursor |
| `\rs`      | Restart LSP                                 |

## Trouble (Diagnostics, References, TODOs)

| Keybinding | Description                        |
| ---------- | ---------------------------------- |
| `\xw`      | Open trouble workspace diagnostics |
| `\xd`      | Open trouble document diagnostics  |
| `\xq`      | Open trouble quickfix list         |
| `\xl`      | Open trouble location list         |
| `\xt`      | Open todos in trouble              |

## Additional Commands

| Keybinding | Description                                      |
| ---------- | ------------------------------------------------ |
| `<C-q>`    | Send selected items to quickfix list and open it |
