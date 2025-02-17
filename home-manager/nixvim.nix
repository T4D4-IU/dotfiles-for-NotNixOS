{ config, pkgs, ... }:

{
  programs.nixvim = {
    enable = true;
    opts = {
        relativenumber = true;
        number = true;
        undofile = true;
        swapfile = false;
        incsearch = true;
        cursorline = true;

        tabstop = 4;
        shiftwidth = 4;
        expandtab = true;
        autoindent = true;

        textwidth = 0;
    };
  };
}
