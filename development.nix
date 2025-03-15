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
    zenn-cli
    wakatime-cli
    ghq # Remote repository management made easy
    gibo # Gitignore boilerplate generator
  ];
}
