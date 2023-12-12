# Sturmfahrt Neovim configuration 
---

note this is an old configuration i made. there were several attempts. now that some new tutorials and documentation that explain more specifically how to have this setup for rust exist for beginners such as myself, i will take the oppurtunity to create a new git repo. and this repo will likely be made private as i dont want to delete it but it not being my exemplary work regarding neovim means it should made private.

this my neovim configuration. i intend on mainly using it for general text editing and coding. it is mainly built to support rust. mainly just becuase i am going to use pycharm for python, and intellij for java. but for something like rust where this is no IDE that is truely optimized for a rust workflow, i might as well make something that is. it is also my intention to have this be portable, i dont want to have to install node.js or somthing like that. it must be stated that i am not all that familiar with neovim, i am still learning. also this was designed with a *nix workflow in mind.\
it is important to note that at the moment it appears the rust support is not working correctly. i will redoing this to get it working. if i cannot get it working then i will redo it the LSP integration and everything it touches to get it working even if i have to sacrifice portability. honestly i want a LSP integration with Autocomplete and snippets that i dont have to manually configure each time i install an LSP server and want to program in a different language. since that is more of an inconvienience than not having the setup be as solely dependent on lua in the context of neovim.
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
