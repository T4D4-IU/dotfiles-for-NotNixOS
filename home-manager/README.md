# Home-manager
### memo
- パッケージは[Nixpkgs](https://search.nixos.org/packages?query=)から探す。
- 入れ方は[home.nix](./home.nix)のhome.packagesに追加する。
- パッケージのオプションの有無は[Home Manager Option Search](https://home-manager-options.extranix.com/?query=&release=release-24.05)から探すことができる。
- パッケージのオプションはprogramsを利用して設定する。
- 更新後 `home-manager switch`を実行して適用する。
- nix言語の文法に問題があるかは`nix-instantiate --parse <filename>`で確認できる。

### 参考リンク
- https://zenn.dev/asa1984/articles/nixos-is-the-best#home.file
- https://zenn.dev/kuu/articles/20250204_introduce-home-manager
- https://wonderwall.hatenablog.com/entry/rust-command-line-tools

### インストール済みパッケージリスト
- brave
- [fastfetch](https://github.com/fastfetch-cli/fastfetch) # fetch system information
- discord
- [omekasy](https://github.com/ikanago/omekasy) # generate dressed up text
- [teip](https://github.com/greymd/teip) # modern pipeline
- [marp-cli](https://github.com/marp-team/marp-cli)
- textlint
- [eza](https://github.com/eza-community/eza) # modern ls command
- [zoxide](https://github.com/ajeetdsouza/zoxide) # smarter cd command
- [wthrr](https://github.com/ttytm/wthrr-the-weathercrab) # weather command
- [zizmor](https://woodruffw.github.io/zizmor/) # static analysis tool for GitHub Actions
- [dust](https://github.com/bootandy/dust) # du alternative written in Rust
- [bat](https://github.com/sharkdp/bat) # cat command with syntax highlighting
- [fd](https://github.com/sharkdp/fd) # find command with syntax highlighting
- [duf](https://github.com/muesli/duf) # disk usage/ free Utility
- [procs](https://github.com/dalance/procs) # modern replacement for ps written in Rust
- [bottom](https://github.com/ClementTsang/bottom) # graphical process/system monitor written in Rust
  - `btm`で呼び出す
- [ripgrep](https://github.com/BurntSushi/ripgrep) # Utility that combines the usability of The Silver Searcher with the raw speed of grep
  - `rg`で呼び出す
- [navi](https://github.com/denisidoro/navi) # interactive cheatsheet tool for the command-line
- [delta](https://github.com/dandavison/delta) # syntax-highlighter for git and diff output
- [hyperfine](https://github.com/sharkdp/hyperfine) # command-line benchmarking tool
- [broot](https://github.com/Canop/broot) # interactive tree view
- [tokei](https://github.com/XAMPPRocky/tokei) # Program that allows you to count your code, quickly
- [grex](https://github.com/pemistahl/grex) # generate regular expression
- [silicon](https://github.com/Aloxaf/silicon) # create beautiful image of source code
- [fzf](https://github.com/junegunn/fzf) # A command-line fuzzy finder

#### GitHub CLI extensions
- markdown-preview
- copilot
- [dash](https://github.com/dlvhdr/gh-dash)
- [poi](https://github.com/seachicken/gh-poi)
