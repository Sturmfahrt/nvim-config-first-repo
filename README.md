# Sturmfahrt Neovim configuration
---
This is the version 2 branch as i am planning on starting from Scratch as this is supposed to be a brand new code base. as i think i screwed up the previous one. as such this codebase may later be merged into main if i deem it satisfactory. you will see in the history of this branch that i have basically decided to throw out all the previous code./

I will likely still use nvim-tree, nvim-web-devicons, lualine, telescope, and onedark. why becuase i like nvim-tree and using the icons on it becuase it looks nice. lualine again becuase it makes the bottom bar look a lot better. Telescope as i like the fuzzy finding as it is genuinly usefull. and Treesitter becuase it is good syntax highlighting.

The main painpoint i am looking to solve is a good LSP, Completion, and Snippets. the goal here is to have something that is comparible to vs code while still having the advantages of vim without me having to manualy configure the thing every fucking time i want to use a different programming language. using neovim has truely made me appreciate how easy vscode is.

As such i am going to use CoC. this will likely require the installing node.js version 14 or higher as that is what CoC depends on. i will rely on CoC for LSP, completion, and snippets.

I will keep the structure for the lua files very similar to what i originally did as that actually works quite well and makes thing much easier to navigate than having one GOD-Config.
