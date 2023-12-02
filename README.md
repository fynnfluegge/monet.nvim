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
  overrides = {},
  styles = {},
}

```
#### Customize colors
You can customize builtin neovim highlight groups and plugin highlight groups
```lua
overrides = {
  -- override neovim highlight groups
  Normal = { fg = "#c2f5bf" },
  -- override plugin highlight groups
  TelescopeMatching = { fg = "##5cd5db" },
}
```

#### Cusomize styles
```lua
styles = {
  strings = { "italic" },
}
```
#### Enable transparent background
```lua
transparent_background = true
```
