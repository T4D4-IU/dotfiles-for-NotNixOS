{pkgs, ...}: {
  home.packages = with pkgs; [
    warp-terminal
    gcc
    nodejs-slim # npmのないNode.js単体
    nodePackages.pnpm
    # nodePackages.wrangler # Cloudflare Workers CLI
    deno
    bun
    postman
    foundry
    wasmer # ユニバーサルWebAssemblyランタイム
    (rust-bin.stable.latest.default.override {
        targets = [
            "wasm32-unknown-unknown"
            # "wasm32-wasi" # 最新のStable版ではサポートされていない？
        ];
    })
    cargo-shuttle
    cargo-llvm-cov # Rustのカバレッジ計測ツール
    cargo-binutils #cargo-llvm-covに使う
    vscode
    jetbrains-toolbox
    zenn-cli
    wakatime-cli
    ghq # Remote repository management made easy
    gibo # Gitignore boilerplate generator
  ];
  programs.ghostty = {
    enable = true;
    settiings = {
      theme = "catppuccin-mocha";
      window-padding-x = 20;
      window-padding-y = 5;
      window-padding-balance = true;
      background-opacity = 0.85;
      background-blur-radius = 20;
      window-startup-mode = "maximized";
      window-save-state = true;
    };
  };
}
