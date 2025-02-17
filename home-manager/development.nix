{pkgs, ...}: {
  home.packages = with pkgs; [
    warp-terminal
    gcc
    nodejs-slim # npmのないNode.js単体
    nodePackages.pnpm
    # nodePackages.wrangler # Cloudflare Workers CLI
    deno
    bun
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
    ghostty
    zenn-cli
    wakatime-cli
    ghq # Remote repository management made easy
    lazygit # Simple terminal UI for git commands
    gibo # Gitignore boilerplate generator
    nix-linter
    nixpkgs-fmt
  ];
}
