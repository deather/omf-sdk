if type -q fenv
    set -q $SDKMAN_DIR
    or set -q $SDKMAN_DIR ~/.sdkman
    set -g sdkman_prefix $SDKMAN_DIR

    fenv source $SDKMAN_DIR/bin/sdkman-init.sh
end