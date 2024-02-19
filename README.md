# nvim

## Description

Modified version of the awesomely organized and simple enough to understand for a beginner ![TinyVim](https://github.com/NvChad/tinyvim.git) with some removals and additions. Based around the ![lazy.nvim](https://github.com/folke/lazy.nvim.git) plugin manager.

![nvim](nvim.png)

While there are setups to install Neovim configs with just a couple of commands and more or less a full fledged IDE will be configured with loads of plugins, my philosophy when moving into Neovim was to keep external code to a minimum and incrementally only add what's absolutely necessary for a decently functional development environment.

Though progressively it has lead to 20 or so plugins for the setup to be where I want it to be - and still it's not even everything included in TinyVim, and supposedly even less than the likes of it's older sibling ![NvChad](https://github.com/NvChad/NvChad.git), or ![LazyVim](https://github.com/LazyVim/LazyVim.git).

One of the nice things about this setup is how plugins can easily be added and removed by just commenting them out or pasted in from the plugin GitHub, and the Lazy plugin manager will do the installation automatically.

A few which I don't use are included in a commented state for even easier access if the need arises.

Some things I've done might for sure not be optimal - but it works quite to my satisfaction at least, and I probably shouldn't spend too much more time on this stuff ;0

Still not sure vulnerability- or securitywise how comfortable I would be running it directly in my main machine, so it'll live in a containerized dev environment for the near future at least.

Thanks also to ![The unsupervised learning podcast](https://danielmiessler.com/) for the Neovim inspiration, and mainly thanks to all the developers putting the time and effort in to create this.
