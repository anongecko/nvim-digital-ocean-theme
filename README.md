I made this for NvChad, but you should be able to install it on other Neovim configurations (or base Neovim) with some extra effort. 

## NvChad Instructions (For Mac and UNIX)
```mkdir -p ~/.config/nvim/lua/themes && cd ~/.config/nvim/lua/themes```
```nvim digital_ocean.lua```

Then copy paste the contents of digital-ocean.lua from this repo into that file. Your linter may show some warnings/errors - just ignore them. Restart Neovim entirely, and it will appear in your theme selector.

**NOTE:** NvChad comes with this, but the theme will never work unless you have NvChad's Base46 plugin installed. **You can find that here:** https://github.com/NvChad/base46
