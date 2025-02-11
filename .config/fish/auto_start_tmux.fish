# Automatically attach to a tmux session or create a new one if none exists

# check if tmux is installed
if type -q tmux
    # check if we're not already inside a tmux session
    if not set -q tmux
        # try to attach to an existing session named 'default'
        tmux attach-session -t default 2>/dev/null

        # if attaching failed (no such session), create a new 'default' session
        if test $status -ne 0
            tmux new-session -s default
        end
    end
end
