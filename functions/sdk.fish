function sdk -d "Software Development Kit Manager"
    fenv source "$SDKMAN_DIR/bin/sdkman-init.sh && sdk $argv"
end
