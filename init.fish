if type -q fenv
    set -q SDKMAN_DIR
    or set -gx SDKMAN_DIR ~/.sdkman
    set -g sdkman_prefix $SDKMAN_DIR

    fenv "source $sdkman_prefix/bin/sdkman-init.sh"

  if set -q SDKMAN_DIR && grep -q "^sdkman_auto_env=true" "$SDKMAN_DIR/etc/config"
    function __omf_sdk_sdkman_auto_env --on-variable PWD
  
      # chdir from current SDKMAN_ENV dirtree outside
      # or 
      # chdir into dir with .sdkmanrc that doesn't match the current SDKMAN_ENV root 
      if begin; test -n $SDKMAN_ENV && not string match -q "$SDKMAN_ENV/**" "$PWD/"; end \
        || begin; test "$SDKMAN_OLD_PWD" != "$PWD" && test "$SDKMAN_ENV" != "$PWD" && test -f ".sdkmanrc"; end

        # runs SDKMAN's chdir hook, results in `sdk env clear` (if there was a previous SDKMAN_ENV) and `sdk env` (if there is a new .sdkmanrc)
        fenv "source $sdkman_prefix/bin/sdkman-init.sh && export SDKMAN_ENV"
    
        # there was `sdk env clear` without `sdk env`
        if not test -f ".sdkmanrc"
          # unset SDKMAN_ENV as fenv can't currently unset variables
          set -eg SDKMAN_ENV
        end
      end
  
      set -gx SDKMAN_OLD_PWD "$PWD"
    end
  end
end
