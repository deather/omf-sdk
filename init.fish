if type -q fenv
    set -q SDKMAN_DIR
    or set -gx SDKMAN_DIR ~/.sdkman
    set -g sdkman_prefix $SDKMAN_DIR

    fenv "source $sdkman_prefix/bin/sdkman-init.sh"
end
