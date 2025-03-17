if type -q ZELLIJ
    # check if we're not already inside a zellij session
    if not set -q ZELLIJ
        # try to attach to an existing session 
        zellij attach

        # if attaching failed (no such session), create a new session
        if test $status -ne 0
            zellij
        end
    end
end
