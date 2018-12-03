<img src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg" align="left" width="144px" height="144px"/>

#### sdk
> A plugin for [Oh My Fish][omf-link].

[![MIT License](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)](/LICENSE)
[![Fish Shell Version](https://img.shields.io/badge/fish-v2.2.0-007EC7.svg?style=flat-square)](https://fishshell.com)
[![Oh My Fish Framework](https://img.shields.io/badge/Oh%20My%20Fish-Framework-007EC7.svg?style=flat-square)](https://www.github.com/oh-my-fish/oh-my-fish)

<br/>

This plugin allows you to use the [sdkman][sdkman_link].
Plugin inspired by the blog post from [Ted Wise][inspired_by].


## Install

```fish
$ omf install sdk
```


## Usage

```fish
$ sdk
```

## FAQ

**Q: I'm not installed SDKMAN in the default directory. How can I specify to the plugin the new installation directory ?**

A: If you were installed SDKMAN in another directory, you need to create a file in the directory `~/.config/fish/conf.d/`. The files are executed in alphabetical order.
For example you can create a file `00_sdkman_path.fish`:

```fish
set -g SDKMAN_DIR "/Users/username/.sdkman"
```

This file will be executed before the `omf.fish` and the `SDKMAN_DIR` variable will be set before.


# License

[MIT][mit] © [Charles Jourdan][author] et [al][contributors]


[mit]:            https://opensource.org/licenses/MIT
[author]:         https://github.com/deather
[contributors]:   https://github.com/deather/plugin-sdk/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[inspired_by]:    http://tedwise.com/2016/02/26/using-sdkman-with-the-fish-shell
[sdkman_link]:    http://sdkman.io
