# 👨‍🎨🎨 Monet.nvim

### 🪷🪻 Neovim theme inspired by Claude Monet's iconic water lilies

![New Project (6)-min](https://github.com/fynnfluegge/monet.nvim/assets/16321871/ab16d2dc-68fc-46b5-8551-16030bba4886)

## 📦 Installation

```lua
{
  "fynnfluegge/monet.nvim",
  name = "monet",
}

```

## 🔧 Configuration

### Default configuration

```lua
require("monet").setup {
    transparent_background = false,
    semantic_tokens = true,
    highlight_overrides= {},
    color_overrides = {},
    styles = {},
}

```

### Customize highlight groups

```lua
highlight_override= {
  -- override neovim highlight groups
  Normal = { fg = "#c2f5bf" },
  -- override plugin highlight groups
  TelescopeMatching = { fg = "#5cd5db" },
}
```

### Customize color palette

```lua
color_overrides = {
    red = "#ad3621",
}
```

### Cusomize styles

```lua
styles = {
  strings = { "italic" },
}
```

## ✨ Contributing

If you are missing a plugin integration don't hesitate to open an issue or raise a PR.
Any kind of contribution is highly appreciated!
