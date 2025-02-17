{ config, pkgs, ... }:

{
  # nixvim モジュールを利用して Neovim を設定
  programs.nixvim = {
    enable = true;

    autoCmd = [
        # 自動でコマンドを実行
    ];
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
    plugins = {
        lazygit = {
            enable = true;
        };
    };
  };
}
