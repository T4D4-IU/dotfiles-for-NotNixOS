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
    vscode
    zenn-cli
    wakatime-cli
  ];
}