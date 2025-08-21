#!/usr/bin/env nix
#! nix develop ../../../. --ignore-env --keep-env-var TERM --keep-env-var HOME --command bash

# ─────────────────────────────────────────────────────────────
# Nix-Shebang Interpreter
# Docs:
# - https://nix.dev/manual/nix/2.29/command-ref/new-cli/nix.html#shebang-interpreter
# - https://nix.dev/manual/nix/2.29/command-ref/new-cli/nix3-env-shell.html#options-that-change-environment-variables

# ─────────────────────────────────────────────────────────────
# Utility Functions

bun_clean() {
    log "info" "${FUNCNAME[0]}: clean 'dist' and 'cache' directory"

    rm -rf docs/.vitepress/dist
    rm -rf docs/.vitepress/cache
}

bun_version() {
    log "info" "${FUNCNAME[0]}: print 'bun' version"

    bun --version
}

bun_install() {
    log "info" "${FUNCNAME[0]}: install dependencies"

    bun install
}

bun_build() {
    log "info" "${FUNCNAME[0]}: build vitepress site"

    bun run build
}

# ─────────────────────────────────────────────────────────────
# Main Function

main() {
    bun_version
    bun_clean
    bun_install
    bun_build
}

main
