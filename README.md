<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&height=220&color=gradient&customColorList=12,20,24&text=config-files&fontSize=64&fontColor=cdd6f4&fontAlignY=38&desc=one%20script.%20one%20reboot.%20one%20very%20smug%20terminal.&descSize=18&descAlignY=58&animation=fadeIn" alt="config-files banner" width="100%"/>

<a href="https://github.com/roland-yegon/config-files">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=20&duration=3200&pause=900&color=CBA6F7&center=true&vCenter=true&width=640&lines=Clean+install+Arch.+Run+%60.%2Fsetup%60.+Profit.;Vim+%2B+Catppuccin+Mocha+%2B+Starship;Go+%7C+Rust+%7C+Hyprland+%7C+zero+tears" alt="Typing SVG" />
</a>

<br/>

![Arch](https://img.shields.io/badge/Arch_Linux-btw-1793D1?style=for-the-badge&logo=archlinux&logoColor=white&labelColor=1e1e2e)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=hyprland&logoColor=white&labelColor=1e1e2e)
![Vim](https://img.shields.io/badge/Vim-019733?style=for-the-badge&logo=vim&logoColor=white&labelColor=1e1e2e)
![Go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white&labelColor=1e1e2e)
![Rust](https://img.shields.io/badge/Rust-fab387?style=for-the-badge&logo=rust&logoColor=white&labelColor=1e1e2e)
![Bash](https://img.shields.io/badge/Bash-a6e3a1?style=for-the-badge&logo=gnubash&logoColor=1e1e2e&labelColor=1e1e2e)

![Theme](https://img.shields.io/badge/theme-Catppuccin_Mocha-cba6f7?style=flat-square&labelColor=1e1e2e)
![Idempotent](https://img.shields.io/badge/re--runnable-yes-a6e3a1?style=flat-square&labelColor=1e1e2e)
![Works on my machine](https://img.shields.io/badge/works_on-my_machine-f9e2af?style=flat-square&labelColor=1e1e2e)
![Made with](https://img.shields.io/badge/made_with-caffeine_%26_spite-f38ba8?style=flat-square&labelColor=1e1e2e)

</div>

<br/>

```text
     ╭──────────────────────────────────────────────╮
     │   ░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀░░░█▀▀░▀█▀░█░░░█▀▀  │
     │   ░█░░░█░█░█░█░█▀▀░░█░░█░█░░░█▀▀░░█░░█░░░█▀▀  │
     │   ░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀░░░▀░░░▀▀▀░▀▀▀░▀▀▀  │
     ╰──────────────────────────────────────────────╯
        my entire desktop, in a folder. you're welcome.
```

## 📖 Table of Contents

- [✨ What is this?](#-what-is-this)
- [🚀 Quick start](#-quick-start)
- [🧬 What the script does](#-what-the-script-does)
- [📦 What gets installed](#-what-gets-installed)
- [⌨️ Vim cheat sheet](#️-vim-cheat-sheet)
- [🎨 Palette](#-palette)
- [🗂️ Repo layout](#️-repo-layout)
- [🩹 Troubleshooting](#-troubleshooting)
- [📜 License](#-license)

<br/>

## ✨ What is this?

My personal dotfiles and post-install bootstrap for **Arch Linux**. I break my system on a regular basis, so instead of rebuilding my setup from memory every time, one script now does it for me.

| | |
|---|---|
| 🛠️ **Toolchain** | Go, Rust, C/C++ (cmake, ninja, gdb) |
| ✍️ **Editor** | Vim, hand-tuned, plugins through native packages (no plugin manager) |
| 🖥️ **Desktop** | Hyprland, riced with [yahr-quickshell](https://github.com/bgibson72/yahr-quickshell) |
| 🐚 **Shell** | Bash + [Starship](https://starship.rs) |
| 🎨 **Theme** | Catppuccin Mocha, everywhere it can possibly fit |

<br/>

## 🚀 Quick start

> [!WARNING]
> This is built for a **fresh Arch install** with `sudo` set up and a normal (non-root) user. It's safe to re-run, but read the script first. Never pipe a stranger's script into your shell, and that includes me.

**1. Make sure `git` is there:**

```bash
sudo pacman -S --needed git
```

**2. Clone the repo:**

```bash
git clone https://github.com/roland-yegon/config-files.git
cd config-files
```

**3. Run it:**

```bash
./setup
```

**4. Reboot when it asks, and enjoy.** ☕

<br/>

## 🧬 What the script does

```mermaid
flowchart TD
    A([🟢 ./setup]) --> B[📦 pacman: toolchain + apps]
    B --> C[🔧 git config]
    C --> D[🦀 rustup default stable]
    D --> E[🐚 starship + Go PATH in .bashrc]
    E --> F[📥 yay from the AUR]
    F --> G[✍️ Vim folders, plugins, .vimrc]
    G --> H[🛍️ AUR apps via yay]
    H --> I[🎨 yahr-quickshell ricing]
    I --> J([🔁 Reboot])

    style A fill:#a6e3a1,stroke:#1e1e2e,color:#1e1e2e
    style J fill:#cba6f7,stroke:#1e1e2e,color:#1e1e2e
    style B fill:#313244,stroke:#89b4fa,color:#cdd6f4
    style C fill:#313244,stroke:#89b4fa,color:#cdd6f4
    style D fill:#313244,stroke:#fab387,color:#cdd6f4
    style E fill:#313244,stroke:#f5c2e7,color:#cdd6f4
    style F fill:#313244,stroke:#89b4fa,color:#cdd6f4
    style G fill:#313244,stroke:#a6e3a1,color:#cdd6f4
    style H fill:#313244,stroke:#89b4fa,color:#cdd6f4
    style I fill:#313244,stroke:#cba6f7,color:#cdd6f4
```

**Nice touches:**

- 🔁 **Idempotent.** Run it twice, nothing explodes. Plugins update, `.bashrc` lines never duplicate, and `yay` is skipped if it's already installed.
- 💾 **Non-destructive.** An existing `.vimrc` gets backed up to `~/.vimrc.bak` first.
- 🛡️ **Won't run as root.** It checks, and it refuses.
- 🧹 **Cleans up after itself.** Temp clones live in a throwaway directory.
- 🩹 **Fails gracefully.** One broken AUR package won't take the whole script down.

<br/>

## 📦 What gets installed

<details open>
<summary><b>🔨 Dev toolchain</b></summary>
<br/>

| Package | Why |
|---|---|
| `base-devel` `cmake` `ninja` | Build everything |
| `go` | Main backend language 🐹 |
| `rustup` | Rust, stable channel 🦀 |
| `gdb` | Debugging, so I can suffer in style |
| `git` | You know why |
| `gvim` | Vim with clipboard support (`+clipboard`) |
| `fzf` `ripgrep` | Fuzzy file and text search inside Vim |

</details>

<details>
<summary><b>🧰 CLI quality of life</b></summary>
<br/>

| Package | Why |
|---|---|
| `starship` | The prompt |
| `btop` | Prettiest task manager there is |
| `fastfetch` | For screenshots and bragging rights |
| `man-db` `man-pages` `tldr` | RTFM, but short |
| `plocate` | Instant file search |
| `ttf-jetbrains-mono-nerd` | Icons that don't render as tofu boxes |

</details>

<details>
<summary><b>🖼️ Desktop apps</b></summary>
<br/>

| Source | Packages |
|---|---|
| **Official repos** | `obs-studio` `libreoffice-still` `okular` `mpv` `gwenview` `discord` `qtcreator` |
| **AUR (via yay)** | `spotify-bin` `brave-bin` `google-chrome` `visual-studio-code-bin` `eclipse-java-bin` `anydesk-bin` |

</details>

<details>
<summary><b>🔌 Vim plugins</b></summary>
<br/>

Installed with Vim's native `pack/` system, so there's no plugin manager and nothing to break.

| Plugin | What it does |
|---|---|
| [catppuccin/vim](https://github.com/catppuccin/vim) | The theme 🎨 |
| [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) | Slick status line |
| [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim) | Fuzzy finder everything |
| [LunarWatcher/auto-pairs](https://github.com/LunarWatcher/auto-pairs) | Brackets that close themselves |

</details>

<br/>

## ⌨️ Vim cheat sheet

> **Leader key:** `Space`

### 🧭 Files, buffers & search

| Keys | Action |
|:---:|---|
| `␣ w` | 💾 Save |
| `␣ q` | 🚪 Quit |
| `␣ e` | 🌳 Toggle file explorer |
| `␣ f` | 🔍 Fuzzy find files |
| `␣ g` | 🔎 Live grep with ripgrep |
| `␣ b` | 📑 Switch buffer |
| `␣ h` | 🕓 File history |
| `␣ n` / `␣ p` | ⏭️ Next / previous buffer |
| `␣ d` | 🗑️ Close buffer |

### ⚡ Editing

| Keys | Action |
|:---:|---|
| `Y` | Yank to end of line (consistent with `D` and `C`) |
| `J` / `K` *(visual)* | Move the selected lines down / up |
| `<` / `>` *(visual)* | Indent and keep the selection |
| `Ctrl + L` | Clear search highlight |
| `Ctrl + H` `J` `K` | Jump between splits |

<br/>

## 🎨 Palette

Everything follows **Catppuccin Mocha**.

| Swatch | Name | Hex |
|:---:|---|---|
| ![](https://img.shields.io/badge/-%20%20%20%20%20-1e1e2e?style=flat-square) | Base | `#1e1e2e` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-cba6f7?style=flat-square) | Mauve | `#cba6f7` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-f5c2e7?style=flat-square) | Pink | `#f5c2e7` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-89b4fa?style=flat-square) | Blue | `#89b4fa` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-a6e3a1?style=flat-square) | Green | `#a6e3a1` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-fab387?style=flat-square) | Peach | `#fab387` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-cdd6f4?style=flat-square) | Text | `#cdd6f4` |

<!--
📸 SCREENSHOTS: add yours here once you have them!

## 📸 Screenshots

<div align="center">
  <img src="assets/desktop.png" width="48%" />
  <img src="assets/vim.png" width="48%" />
</div>
-->

<br/>

## 🗂️ Repo layout

```text
config-files/
├── 📜 setup       # The one script to rule them all
├── 🎹 .vimrc      # Vim config (Catppuccin, fzf, lightline)
└── 📖 README.md   # You are here
```

<br/>

## 🩹 Troubleshooting

<details>
<summary><b>Icons show up as empty boxes</b></summary>
<br/>

Set your terminal's font to **JetBrainsMono Nerd Font**. The script installs it, but your terminal still has to be told to use it.

</details>

<details>
<summary><b>Vim complains about colorscheme or plugins</b></summary>
<br/>

Check that the plugins landed in the right place:

```bash
ls ~/.vim/pack/*/start/
```

You should see `catppuccin`, `lightline`, `fzf.vim` and `auto-pairs`.

</details>

<details>
<summary><b>An AUR package failed to install</b></summary>
<br/>

The script warns and keeps going. Install the failed one manually:

```bash
yay -S <package-name>
```

</details>

<details>
<summary><b>`starship` isn't showing up in my prompt</b></summary>
<br/>

Open a new terminal, or reload the config:

```bash
source ~/.bashrc
```

</details>

<br/>

## 📜 License

Do whatever you want with it. If it nukes your system, that's between you and your backups. 💀

<br/>

<div align="center">

**Made with 💜 and way too much caffeine by [Roland](https://github.com/roland-yegon)**

<sub>⭐ Star it if it saved you an afternoon of reinstalling things ⭐</sub>

<img src="https://capsule-render.vercel.app/api?type=waving&height=120&color=gradient&customColorList=12,20,24&section=footer" width="100%" alt="footer"/>

</div>
