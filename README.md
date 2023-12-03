# 👨‍🎨🎨 Monet.nvim

### 🪻 Neovim theme inspired by Claude Monet's iconic water lilies 🪻

![New Project (3)-min](https://github.com/fynnfluegge/monet.nvim/assets/16321871/bf2e159f-7d2b-498c-ae3b-7006943e5255)

## 📦 Installation

```lua
{
  "fynnfluegge/monet.nvim",
  name = "monet",
}

```

## 🔧 Configuration

#### This is the default configuration

```lua
require("monet").setup {
    transparent_background = false,
    semantic_tokens = true,
    highlight_overrides= {},
    color_overrides = {},
    styles = {},
}

```

#### Customize highlight groups

Customize builtin neovim highlight groups and plugin highlight groups

```lua
highlight_override= {
  -- override neovim highlight groups
  Normal = { fg = "#c2f5bf" },
  -- override plugin highlight groups
  TelescopeMatching = { fg = "#5cd5db" },
}
```

#### Customize colors

Customize the color palette of the theme

```lua
color_overrides = {
    red = "#ad3621",
}
```

#### Cusomize styles

```lua
styles = {
  strings = { "italic" },
}
```

## ✨ Contribtung

If you are missing a plugin integration don't hesitate to open an issue or raise a PR.
Any kind contribution is highly appreciated!
