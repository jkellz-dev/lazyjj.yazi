# lazyjj.yazi

Plugin for [Yazi](https://github.com/sxyazi/yazi) to manage [jj](https://github.com/jj-vcs/jj) repos with [lazyjj](https://github.com/Cretezy/lazyjj)

## Dependencies

Make sure [jj](https://github.com/jj-vcs/jj) and [lazyjj](https://github.com/Cretezy/lazyjj)is installed and in your `PATH`.

## Installation

### Using `ya pkg`

```sh
 ya pkg add jkellz-dev/lazyjj
```

### Manual

**Linux/macOS**

```sh
git clone https://github.com/jkellz-dev/lazyjj.yazi.git ~/.config/yazi/plugins/lazyjj.yazi
```

**Windows**

```sh
git clone https://github.com/jkellz-dev/lazyjj.yazi.git %AppData%\yazi\config\plugins\lazyjj.yazi
```

## Configuration

Add a keymap to your **keymap.toml** file. For example:

```toml
[[mgr.prepend_keymap]]
desc = "run lazyjj"
on = ["g", "j"]
run = "plugin lazyjj"
```

Please refer to the [keymap.toml](https://yazi-rs.github.io/docs/configuration/keymap) documentation

## Credits

This project is really a shameless port of [lazygit.yazi](https://github.com/Lil-Dank/lazygit.yazi) with some updated values. Thanks for all the work Lil-Dank!
