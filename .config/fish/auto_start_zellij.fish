# Auto-attach (or create) a zellij session on interactive shells
if status is-interactive
    and not set -q ZELLIJ
    and type -q zellij
    # Replace fish with zellij; when you exit zellij, the shell ends (cleanest)
    exec zellij attach --create main
end