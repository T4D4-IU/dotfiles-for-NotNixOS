{ config, pkgs, ... }:

{
  # nixvim モジュールを利用して Neovim を設定
  programs.nixvim = {
    enable = true;

    # 例: colorscheme とプラグインの有効化
    colorschemes.gruvbox.enable = true;
    plugins.lualine.enable = true;

    # オプション設定 (例: 行番号の表示)
    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
    };

    # その他、追加の Lua 設定なども可能
    extraConfigLua = ''
      print("Welcome to Neovim configured by nixvim!")
    '';
  };
}
