function sdk -d "Software Development Kit Manager"
    fenv "source $sdkman_prefix/bin/sdkman-init.sh && sdk $argv"
end
