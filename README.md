# Sturmfahrt Neovim configuration
---
This Branch is a broken neovim config. this is just me slapping CoC in an existing config and expecting it to work well. it did not. as such i started a new version 2.0 of my config, 2.0 will not be based on my previous work, though it will use some of the same plugins, and follow a similar structure.

this my neovim configuration. i intend on mainly using it for general text editing and coding. it is mainly built to support rust. mainly just becuase i am going to use pycharm for python, and intellij for java. but for something like rust where this is no IDE that is truely optimized for a rust workflow, i might as well make something that is. it is also my intention to have this be portable, i dont want to have to install node.js or somthing like that. it must be stated that i am not all that familiar with neovim, i am still learning. also this was designed with a *nix workflow in mind.
## Keybindings
CTRL N  is for the file explorer sidebar.\
Double-Space  is for telescope, this is used for fuzzy finding.
## Config files
### Plugin specific configs
Config Files for individual plugins are located in ``` lua/core/plugin_config/ ```. each plugin or plugin group has its own lua config file. the ```lua/core/plugin_config/init.lua``` file in there is what is read by the root level```init.lua```. as such all plugin configuration files need to be required in ```lua/core/plugin_config/init.lua```\
### Plugin config
Plugins are installed in ```lua/core/plugins.lua```. this is the file that specifies that packer is to be installed if it is not already. then any plugins to be loaded must be specified there.
### general keymaps config
Generic keymaps are stored in ```lua/core/keymaps.lua```. plugin specific keybindings are in their own plugin specific config file. i may decide to centralize all keybindings into here at a later point.
### general vim preferences
More general preferences are set and stored in ```lua/core/preferences.lua```. this is where i have things like tab length set and relative numbbering enabled.
### init.lua
This really only exists to bootstrap all the other config files.
