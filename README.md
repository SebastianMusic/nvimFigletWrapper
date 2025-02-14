This is a simple plugin i created to start learning lua programming language and the neovim api

### Functionality
Open your Nvim command line and type a ":Figlet <someStyle> <textToBeStyled>"
Example:
":Figlet slant hello world"
It will be copied to your "0 register in neovim

When you are to paste it simply press `"0p`

### Demo
![Demo](./trimmed.gif)

### Example config
```lua
-- Example config
return {
  'sebastianmusic/nvimFigletWrapper',
  lazy = false,
  config = function()
    require 'figlet' -- Ensure it loads
  end,
}
```

### License 
This plugin is licensed under the [GNU General Public License V3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)
