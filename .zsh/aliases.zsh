
case $(uname) in
    Darwin)
        # Add all MacOSX alias here
        alias ls="ls -G"
        alias vim="/usr/local/bin/vim"
        ;;
    *)
        # Default to linux alias here
        alias ls="ls --color=auto"
        ;;
esac
