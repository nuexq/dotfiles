<h1 align='center'>My Dotfiles</h1>

<div>
  <img src='https://pbs.twimg.com/media/GOgoPxwWAAAFESi?format=jpg&name=large' alt='screenshot' />
  <img src='https://pbs.twimg.com/media/GOgqwQvXkAAa_KE?format=jpg&name=large' alt='screenshot' />
</div>
<p align="center">
  <a href="https://github.com/No0ne003/dotfiles/commits/"><img src="https://img.shields.io/github/last-commit/No0ne003/dotfiles?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
 <a href="https://github.com/Matt-FTW/dotfiles"><img alt="Size" src="https://img.shields.io/github/repo-size/No0ne003/dotfiles?style=for-the-badge&logo=discord&color=DDB6F2&logoColor=D9E0EE&labelColor=302D41"></a>
  <a href="https://github.com/Matt-FTW/dotfiles/commits/main/"><img alt="Commit Activity" src="https://img.shields.io/github/commit-activity/m/No0ne003/dotfiles/main?style=for-the-badge&logo=github&color=F2CDCD&logoColor=D9E0EE&labelColor=302D41"/></a>
</p>

## ⚙️ System Info

The rice codename is **Artemis** 🏹, named after the Greek goddess of the hunt and the wild.

- **OS**: [Arch Linux](https://archlinux.org/) :boom:
- **WM**: [hyprland](https://hyprland.org/) :window:
- **Shell**: [zsh](https://www.zsh.org/) :shell:
- **Terminal Emulator**: [kitty](https://sw.kovidgoyal.net/kitty/) :cat:
- **Panel**: [waybar](https://github.com/Alexays/Waybar) :shaved_ice:
- **Text Editor**: [neovim](https://neovim.io/) :keyboard:
- **App Launcher**: [rofi](https://davatorium.github.io/rofi/) :rocket:
- **File Manager**: [Dolphin](https://apps.kde.org/dolphin/) :open_file_folder:
- **Browser**: [thorium](https://thorium.rocks/) :globe_with_meridians:
- **Notification Manager**: [dunst](https://github.com/dunst-project/dunst) :bell:
- **Colorscheme**: [pywalll](https://github.com/dylanaraps/pywal) :art:

---

## ⌨️ Keybindings

### tmux

> [!NOTE]
> i use `h` `j` `k` `l` (vim style) to move on tmux, i will name it (move)

| Keys                                                | Action                    |
| :-------------------------------------------------- | :------------------------ |
| <kbd>Ctrl</kbd> + <kbd>move</kbd>                   | switch pens               |
| <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>move</kbd> | resize pens               |
| <kbd>prefix</kbd> + <kbd>{ or }</kbd>               | change pen place          |
| <kbd>prefix</kbd> + <kbd>[</kbd>                    | enter copy mode           |
| `on copy mode` <kbd>y</kbd>                         | copy selection and cancel |
| `on copy mode` <kbd>v</kbd>                         | begin selection           |
| <kbd>prefix</kbd> + <kbd>z</kbd>                    | toggle pen to full window |
| <kbd>prefix</kbd> + <kbd>!</kbd>                    | make pen a full window    |

### nvim

> [!TIP]
> See the nvchad docs

### hyprland

| Keys                                                                                                     | Action                                               |
| :------------------------------------------------------------------------------------------------------- | :--------------------------------------------------- |
| <kbd>Super</kbd> + <kbd>Q</kbd><br><kbd>Alt</kbd> + <kbd>F4</kbd>                                        | Close focused window                                 |
| <kbd>Super</kbd> + <kbd>Del</kbd>                                                                        | Kill Hyprland session                                |
| <kbd>Super</kbd> + <kbd>W</kbd>                                                                          | Toggle the window between focus and float            |
| <kbd>Alt</kbd> + <kbd>Enter</kbd>                                                                        | Toggle the window between focus and fullscreen       |
| <kbd>Super</kbd> + <kbd>Esc</kbd>                                                                        | Launch lock screen                                   |
| <kbd>Super</kbd> + <kbd>Backspace</kbd>                                                                  | Launch logout menu                                   |
| <kbd>Ctrl</kbd> + <kbd>Esc</kbd>                                                                         | Toggle waybar                                        |
| <kbd>Super</kbd> + <kbd>Return</kbd>                                                                     | Launch terminal emulator (kitty)                     |
| <kbd>Super</kbd> + <kbd>E</kbd>                                                                          | Launch file manager (dolphin)                        |
| <kbd>Super</kbd> + <kbd>C</kbd>                                                                          | Launch text editor (vscode)                          |
| <kbd>Super</kbd> + <kbd>N</kbd>                                                                          | Launch web browser (Thorium)                         |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Esc</kbd>                                                      | Launch system monitor (htop/btop or fallback to top) |
| <kbd>Alt</kbd> + <kbd>Space</kbd>                                                                        | Launch application launcher (rofi)                   |
| <kbd>Super</kbd> + <kbd>Tab</kbd>                                                                        | Launch window switcher (rofi)                        |
| <kbd>Super</kbd> + <kbd>R</kbd>                                                                          | Launch file explorer (rofi)                          |
| <kbd>F10</kbd>                                                                                           | Toggle audio mute                                    |
| <kbd>F11</kbd>                                                                                           | Decrease volume                                      |
| <kbd>F12</kbd>                                                                                           | Increase volume                                      |
| <kbd>Super</kbd> + <kbd>P</kbd>                                                                          | Partial screenshot capture                           |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>P</kbd>                                                        | Partial screenshot capture (frozen screen)           |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>P</kbd>                                                         | Monitor screenshot capture                           |
| <kbd>PrtScn</kbd>                                                                                        | All monitors screenshot capture                      |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd>                                                         | Disable hypr effects for gamemode                    |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>→</kbd><kbd>←</kbd>                                             | Cycle wallpaper                                      |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd>                                                       | Launch style select menu (rofi)                      |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>W</kbd>                                                       | Launch wallpaper select menu (rofi)                  |
| <kbd>Super</kbd> + <kbd>V</kbd>                                                                          | Launch clipboard (rofi)                              |
| <kbd>Super</kbd> + <kbd>O</kbd>                                                                          | Switch keyboard layout                               |
| <kbd>Alt</kbd> + <kbd>Tab</kbd>                                                                          | Change window focus                                  |
| <kbd>Super</kbd> + <kbd>[0-9]</kbd>                                                                      | Switch workspaces                                    |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>j</kbd>                                                        | Move to the first empty workspace                    |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>h</kbd><kbd>l</kbd><kbd>k</kbd><kbd>j</kbd>                   | Resize windows                                       |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[0-9]</kbd>                                                   | Move focused window to a relative workspace          |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>h</kbd><kbd>l</kbd><kbd>k</kbd><kbd>j</kbd> | Move focused window around the current workspace     |
| <kbd>Super</kbd> + <kbd>MouseScroll</kbd>                                                                | Scroll through existing workspaces                   |
| <kbd>Super</kbd> + <kbd>LeftClick</kbd><br><kbd>Super</kbd> + <kbd>Z</kbd>                               | Move focused window                                  |
| <kbd>Super</kbd> + <kbd>RightClick</kbd><br><kbd>Super</kbd> + <kbd>X</kbd>                              | Resize focused window                                |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd>                                                         | Move/Switch to special workspace (scratchpad)        |
| <kbd>Super</kbd> + <kbd>S</kbd>                                                                          | Toggle to special workspace                          |
| <kbd>Super</kbd> + <kbd>D</kbd>                                                                          | Toggle focused window split                          |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>[0-9]</kbd>                                                     | Move focused window to a workspace silently          |
