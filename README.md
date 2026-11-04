<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&height=240&color=gradient&customColorList=12,20,24&text=config-files&fontSize=68&fontColor=cdd6f4&fontAlignY=38&desc=one%20script.%20one%20reboot.%20one%20very%20smug%20terminal.&descSize=18&descAlignY=58&animation=fadeIn" alt="config-files banner" width="100%"/>

<a href="https://github.com/roland-yegon/config-files">
  <img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=20&duration=3000&pause=900&color=CBA6F7&center=true&vCenter=true&width=700&lines=Clean+install+Arch.+Run+.%2Fsetup.+Profit.;Vim+with+real+IDE+powers.+Zero+AI+autocomplete.;LSP+%7C+Linting+%7C+Snippets+%7C+Catppuccin+Mocha;Go+%7C+Rust+%7C+C%2FC%2B%2B+%7C+Python+%7C+Java+%7C+Qt+%7C+Web;Hyprland+%2B+end-4+rice+%7C+zero+tears" alt="Typing SVG" />
</a>

<br/><br/>

<img src="https://skillicons.dev/icons?i=arch,linux,vim,bash,go,rust,c,cpp,cmake,qt,python,java,html,css,js,ts,git,github&theme=dark&perline=9" alt="tech stack"/>

<br/><br/>

![Arch](https://img.shields.io/badge/Arch_Linux-btw-1793D1?style=for-the-badge&logo=archlinux&logoColor=white&labelColor=1e1e2e)
![Hyprland](https://img.shields.io/badge/Hyprland-58E1FF?style=for-the-badge&logo=hyprland&logoColor=white&labelColor=1e1e2e)
![Vim](https://img.shields.io/badge/Vim-019733?style=for-the-badge&logo=vim&logoColor=white&labelColor=1e1e2e)
![Catppuccin](https://img.shields.io/badge/Catppuccin-Mocha-cba6f7?style=for-the-badge&logo=catppuccin&logoColor=cba6f7&labelColor=1e1e2e)
![LSP](https://img.shields.io/badge/LSP-8_languages-a6e3a1?style=for-the-badge&labelColor=1e1e2e)
![No AI](https://img.shields.io/badge/AI_autocomplete-0%25-f38ba8?style=for-the-badge&labelColor=1e1e2e)

![Last commit](https://img.shields.io/github/last-commit/roland-yegon/config-files?style=flat-square&labelColor=1e1e2e&color=cba6f7)
![Repo size](https://img.shields.io/github/repo-size/roland-yegon/config-files?style=flat-square&labelColor=1e1e2e&color=89b4fa)
![Stars](https://img.shields.io/github/stars/roland-yegon/config-files?style=flat-square&labelColor=1e1e2e&color=f9e2af)
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
- [🧠 Vim, but make it an IDE](#-vim-but-make-it-an-ide)
- [🌐 Language support](#-language-support)
- [📦 What gets installed](#-what-gets-installed)
- [⌨️ Vim cheat sheet](#️-vim-cheat-sheet)
- [🪄 After the script](#-after-the-script)
- [🎨 Palette](#-palette)
- [🗂️ Repo layout](#️-repo-layout)
- [🩹 Troubleshooting](#-troubleshooting)
- [🙏 Credits](#-credits)
- [📜 License](#-license)

<br/>

## ✨ What is this?

My personal dotfiles and post-install bootstrap for **Arch Linux**. I break my system on a regular basis, so instead of rebuilding my setup from memory every time, one script now does it for me.

<table>
<tr>
<td width="50%" valign="top">

### 🛠️ Toolchain
Go, Rust, C/C++, Python, Java, Node, Qt 6, CMake, Ninja, GDB. Everything I code in, ready on first boot.

</td>
<td width="50%" valign="top">

### ✍️ Editor
Plain **Vim**, hand-tuned, with language servers, linting, snippets and word completion. All plugins are installed with native `pack/`, so there's no plugin manager.

</td>
</tr>
<tr>
<td width="50%" valign="top">

### 🖥️ Desktop
**Hyprland**, riced with [end-4's illogical-impulse](https://github.com/end-4/dots-hyprland). Pretty enough to screenshot, fast enough to forget about.

</td>
<td width="50%" valign="top">

### 🎨 Theme
**Catppuccin Mocha**, everywhere it can possibly fit. The Vim background is transparent so the wallpaper shows through.

</td>
</tr>
</table>

> [!NOTE]
> **No AI completion, on purpose.** Every suggestion in this Vim setup comes from a language server (type-aware, deterministic) or from words already in your open files. Nothing writes code for you. The popup suggests, you decide.

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

**4. Do the [two manual steps](#-after-the-script), reboot when it asks, and enjoy.** ☕

<details>
<summary><b>👀 What a run looks like</b></summary>
<br/>

```text
==> Installing toolchain (official repos)
==> Setting up git
==> Setting up Rust
==> Setting up shell (starship + Go PATH)
==> Installing yay (AUR helper)
==> Setting up Vim
==> Installing AUR apps
==> Ricing with illogical impulse end-4
==> All done.
[!] Manual step: open a .java file in Vim and run :LspInstallServer (Java),
[!] then open a CMakeLists.txt and run :LspInstallServer (CMake).
Reboot now? [y/N]
```

</details>

<br/>

## 🧬 What the script does

```mermaid
flowchart TD
    A([🟢 ./setup]) --> B[📦 pacman: toolchain, language servers, apps]
    B --> C[🔧 git config]
    C --> D[🦀 rustup + rust-analyzer]
    D --> E[🐚 starship + Go PATH in .bashrc]
    E --> F[📥 yay from the AUR]
    F --> G[✍️ Vim folders, 12 plugins, .vimrc]
    G --> H[🛍️ AUR apps and web language servers]
    H --> I[🎨 illogical-impulse ricing]
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

## 🧠 Vim, but make it an IDE

Plain Vim, no Neovim, no plugin manager, and still all of this:

| | Feature | How |
|:---:|---|---|
| 🔴 | **Linting and diagnostics** | Language servers flag errors as you type, with the message shown under the cursor |
| 🧭 | **Go to definition, references, hover docs** | `gd` `gr` `gi` `K` |
| ✏️ | **Rename and code actions** | Project-wide rename, quick fixes |
| 💬 | **Completion popup** | Type-aware suggestions plus words from your open buffers |
| ✂️ | **Snippets** | Loops, structs, classes and more through `friendly-snippets` |
| 🪟 | **Transparent background** | Vim drops its own paint and your terminal's opacity does the rest |
| 📜 | **Soft wrap** | Long lines wrap at word boundaries, and `j`/`k` walk the wrapped chunks |
| 🔎 | **Fuzzy everything** | Files, buffers, history and live grep with fzf + ripgrep |
| 🧱 | **Auto pairs** | Brackets and quotes close themselves |
| 💾 | **Persistent undo + backups** | Kept in `~/.vim/`, out of your project folders |

<br/>

## 🌐 Language support

Every language below gets diagnostics, completion, hover docs, go-to-definition and formatting through [vim-lsp](https://github.com/prabirshrestha/vim-lsp).

| Language | Server | Installed by |
|---|---|---|
| 🐹 **Go** | `gopls` | `pacman` |
| 🦀 **Rust** | `rust-analyzer` | `rustup component add` |
| ⚙️ **C / C++** | `clangd` | `pacman` (`clang`) |
| 🧩 **Qt (C++)** | `clangd` + `compile_commands.json` | `pacman` (`qt6-base`) + CMake |
| 🐍 **Python** | `pyright` | `pacman` |
| ☕ **Java** | `jdtls` | `:LspInstallServer` (manual, once) |
| 🏗️ **CMake** | `cmake-language-server` | `:LspInstallServer` (manual, once) |
| 🌍 **Web** (HTML, CSS, JS, TS, JSON) | `typescript-language-server`, `vscode-langservers-extracted` | `pacman` + AUR |

<details>
<summary><b>🧩 Qt projects: one-time setup per project</b></summary>
<br/>

`clangd` needs to know where Qt's headers live. CMake can generate that map, so add this line to your project's `CMakeLists.txt`:

```cmake
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
```

Then configure and link the generated file into the project root:

```bash
cmake -S . -B build && ln -sf build/compile_commands.json .
```

</details>

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
| `clang` | C/C++ compiler tooling and `clangd` |
| `jdk-openjdk` | Java, and the runtime `jdtls` needs |
| `qt6-base` `qtcreator` | Qt development |
| `nodejs` `npm` `typescript` | Web tooling |
| `gdb` | Debugging, so I can suffer in style |
| `git` | You know why |
| `gvim` | Vim with clipboard support (`+clipboard`) |
| `fzf` `ripgrep` | Fuzzy file and text search inside Vim |

</details>

<details>
<summary><b>🧠 Language servers</b></summary>
<br/>

| Package | Language |
|---|---|
| `gopls` | Go |
| `pyright` | Python |
| `typescript-language-server` | JavaScript / TypeScript |
| `vscode-langservers-extracted` *(AUR)* | HTML, CSS, JSON |
| `rust-analyzer` *(rustup component)* | Rust |

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
| `btrfs-assistant` | Snapshots without the headache |
| `ttf-jetbrains-mono-nerd` | Icons that don't render as tofu boxes |

</details>

<details>
<summary><b>🖼️ Desktop apps</b></summary>
<br/>

| Source | Packages |
|---|---|
| **Official repos** | `obs-studio` `libreoffice-still` `okular` `mpv` `gwenview` `discord` |
| **AUR (via yay)** | `spotify-bin` `brave-bin` `google-chrome` `visual-studio-code-bin` `eclipse-java-bin` `anydesk-bin` |
| **Boot + snapshots** | `limine-mkinitcpio-hook` `limine-snapper-sync` |

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
| [prabirshrestha/vim-lsp](https://github.com/prabirshrestha/vim-lsp) | Language server client (diagnostics, navigation) |
| [mattn/vim-lsp-settings](https://github.com/mattn/vim-lsp-settings) | Auto-configures servers, one-command installs |
| [prabirshrestha/asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim) | The completion popup |
| [asyncomplete-lsp.vim](https://github.com/prabirshrestha/asyncomplete-lsp.vim) | Feeds language server results into the popup |
| [asyncomplete-buffer.vim](https://github.com/prabirshrestha/asyncomplete-buffer.vim) | Word suggestions from open buffers |
| [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip) + [integ](https://github.com/hrsh7th/vim-vsnip-integ) | Snippet engine |
| [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | The actual snippets, for every language above |

</details>

<br/>

## ⌨️ Vim cheat sheet

> **Leader key:** <kbd>Space</kbd>

### 🧭 Files, buffers & search

| Keys | Action |
|:---:|---|
| <kbd>␣</kbd> <kbd>w</kbd> | 💾 Save |
| <kbd>␣</kbd> <kbd>q</kbd> | 🚪 Quit |
| <kbd>␣</kbd> <kbd>e</kbd> | 🌳 Toggle file explorer |
| <kbd>␣</kbd> <kbd>f</kbd> | 🔍 Fuzzy find files |
| <kbd>␣</kbd> <kbd>g</kbd> | 🔎 Live grep with ripgrep |
| <kbd>␣</kbd> <kbd>b</kbd> | 📑 Switch buffer |
| <kbd>␣</kbd> <kbd>h</kbd> | 🕓 File history |
| <kbd>␣</kbd> <kbd>n</kbd> / <kbd>␣</kbd> <kbd>p</kbd> | ⏭️ Next / previous buffer |
| <kbd>␣</kbd> <kbd>d</kbd> | 🗑️ Close buffer |

### 🧠 Code intelligence (active when a language server is attached)

| Keys | Action |
|:---:|---|
| <kbd>g</kbd> <kbd>d</kbd> | 🎯 Go to definition |
| <kbd>g</kbd> <kbd>r</kbd> | 🔗 Find references |
| <kbd>g</kbd> <kbd>i</kbd> | 🧱 Go to implementation |
| <kbd>K</kbd> | 📖 Hover docs |
| <kbd>␣</kbd> <kbd>r</kbd> <kbd>n</kbd> | ✏️ Rename symbol |
| <kbd>␣</kbd> <kbd>c</kbd> <kbd>a</kbd> | 💡 Code actions |
| <kbd>␣</kbd> <kbd>F</kbd> | 🧹 Format document |
| <kbd>[</kbd> <kbd>d</kbd> / <kbd>]</kbd> <kbd>d</kbd> | 🔴 Previous / next diagnostic |

### 💬 Completion & snippets (insert mode)

| Keys | Action |
|:---:|---|
| <kbd>Tab</kbd> / <kbd>Shift</kbd>+<kbd>Tab</kbd> | Move through the suggestion popup |
| <kbd>Enter</kbd> | Accept the highlighted suggestion |
| <kbd>Ctrl</kbd>+<kbd>J</kbd> | ✂️ Expand snippet / jump to next field |
| <kbd>Ctrl</kbd>+<kbd>K</kbd> | ↩️ Jump to previous snippet field |

### ⚡ Editing & movement

| Keys | Action |
|:---:|---|
| <kbd>Y</kbd> | Yank to end of line (consistent with `D` and `C`) |
| <kbd>J</kbd> / <kbd>K</kbd> *(visual)* | Move the selected lines down / up |
| <kbd>&lt;</kbd> / <kbd>&gt;</kbd> *(visual)* | Indent and keep the selection |
| <kbd>j</kbd> / <kbd>k</kbd> / arrows | Move by *visual* line on wrapped text (`5j` still counts real lines) |
| <kbd>Ctrl</kbd>+<kbd>L</kbd> | Clear search highlight |
| <kbd>Ctrl</kbd>+<kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> | Jump between splits |

<br/>

## 🪄 After the script

Two language servers can't be installed unattended, because they need an open file of their type. Do this once:

**1. Java.** Open any `.java` file in Vim and run:

```vim
:LspInstallServer
```

**2. CMake.** Open any `CMakeLists.txt` in Vim and run the same command:

```vim
:LspInstallServer
```

> [!TIP]
> The first time `jdtls` starts, it indexes before it talks. Give it 10 to 20 seconds before deciding it's broken.

**3. (Optional) GitHub SSH key.** The repo includes a helper that generates an ed25519 key, loads it into the agent, and prints the public key ready to paste into GitHub:

```bash
./github
```

<br/>

## 🎨 Palette

Everything follows **Catppuccin Mocha**.

| Swatch | Name | Hex |
|:---:|---|---|
| ![](https://img.shields.io/badge/-%20%20%20%20%20-1e1e2e?style=flat-square) | Base | `#1e1e2e` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-cba6f7?style=flat-square) | Mauve | `#cba6f7` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-f5c2e7?style=flat-square) | Pink | `#f5c2e7` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-f38ba8?style=flat-square) | Red | `#f38ba8` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-fab387?style=flat-square) | Peach | `#fab387` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-f9e2af?style=flat-square) | Yellow | `#f9e2af` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-a6e3a1?style=flat-square) | Green | `#a6e3a1` |
| ![](https://img.shields.io/badge/-%20%20%20%20%20-89b4fa?style=flat-square) | Blue | `#89b4fa` |
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
├── 🎹 .vimrc      # Vim config (LSP, snippets, Catppuccin, fzf, lightline)
├── 🔑 github      # Generates an SSH key for GitHub
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

You should see `catppuccin`, `lightline`, `fzf.vim`, `auto-pairs`, `vim-lsp`, `vim-lsp-settings`, `asyncomplete.vim`, `asyncomplete-lsp.vim`, `asyncomplete-buffer.vim`, `vim-vsnip`, `vim-vsnip-integ` and `friendly-snippets`.

</details>

<details>
<summary><b>No diagnostics or completion for a language</b></summary>
<br/>

Inside Vim, check whether a server attached to the current file:

```vim
:LspStatus
```

If nothing is running, try installing the server for that filetype:

```vim
:LspInstallServer
```

For Qt and other CMake C++ projects, make sure `compile_commands.json` exists in the project root (see [Qt setup](#-language-support)).

</details>

<details>
<summary><b>Vim isn't transparent</b></summary>
<br/>

Vim can only stop painting its own background. The actual see-through effect comes from your **terminal's** opacity setting, so turn that up first.

</details>

<details>
<summary><b>Copy/paste with the system clipboard doesn't work</b></summary>
<br/>

Check that your Vim was built with clipboard support:

```bash
vim --version | grep clipboard
```

You want `+clipboard`. The plain `vim` package doesn't have it, but `gvim` (which this script installs) does.

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
<summary><b><code>starship</code> isn't showing up in my prompt</b></summary>
<br/>

Open a new terminal, or reload the config:

```bash
source ~/.bashrc
```

</details>

<br/>

## 🙏 Credits

Standing on the shoulders of giants:

- 🎨 [Catppuccin](https://github.com/catppuccin) for the best palette in the terminal
- 🖥️ [end-4 / dots-hyprland](https://github.com/end-4/dots-hyprland) for the illogical-impulse rice
- 🧠 [vim-lsp](https://github.com/prabirshrestha/vim-lsp), [asyncomplete](https://github.com/prabirshrestha/asyncomplete.vim) and [vim-vsnip](https://github.com/hrsh7th/vim-vsnip) for making Vim feel like an IDE
- 🚀 [Starship](https://starship.rs) for the prompt
- 🧰 [capsule-render](https://github.com/kyechan99/capsule-render), [readme-typing-svg](https://github.com/DenverCoder1/readme-typing-svg), [skillicons.dev](https://skillicons.dev) and [shields.io](https://shields.io) for the eye candy

<br/>

## 📜 License

Do whatever you want with it. If it nukes your system, that's between you and your backups. 💀

<br/>

<div align="center">

**Made with 💜 and way too much caffeine by [Roland](https://github.com/roland-yegon)**

<sub>⭐ Star it if it saved you an afternoon of reinstalling things ⭐</sub>

<img src="https://capsule-render.vercel.app/api?type=waving&height=120&color=gradient&customColorList=12,20,24&section=footer" width="100%" alt="footer"/>

</div>
