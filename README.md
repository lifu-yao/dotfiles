# MacOS Setup

### Karabiner Element

[External Keyboard remapping](https://karabiner-elements.pqrs.org/)

### Mouse & Keyboard setting

change gesture, key delays

### Chrome

1. Installation & Sign in
2. plugins installed: Vimium

### Notion

http://notion.so

### iTerm2

1. import lifu.json
2. Color → Solarized Dark
3. profile - text - font → Meslo LG S for Powerline

### Dotfiles

1. Clone dotfiles from Github

   ```jsx
   ~: git clone [<https://github.com/lifu-yao/dotfiles.git>](<https://github.com/lifu-yao/dotfiles.git>)
   ```

2. install dotbot links

   ```jsx
   ~/dotfiles: ./install
   ```

### ZSH

1. install oh-my-zsh

   ```jsx
   ~: sh -c "$(curl -fsSL <https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh>)"
   ```

2. install fonts

   ```jsx
   ~: git clone <https://github.com/powerline/fonts.git>
   ~/fonts: ./install.sh
   ```

3. install zsh plugins

   ```jsx
   ~: source .zshrc
   ```

4. zsh-autosuggestions failed to load, manually install

   ```jsx
   ~: git clone <https://github.com/zsh-users/zsh-autosuggestions> ~/.oh-my-zsh/plugins/zsh-autosuggestions
   ```

### VIM

1. init vim

   ```jsx
   ~: git clone [<https://github.com/henrylaioffer/.vim.git>](<https://github.com/henrylaioffer/.vim.git>) ~/.vim
   ```

2. install vim plugins

   ```jsx
   vim :PlugInstall
   ```

### TMUX

1. install

   ```jsx
   ~: brew install tmux
   ```

2. reattach user space

   ```jsx
   ~: brew install reattach-to-user-namespace
   ```

3. install theme-pack

   ```jsx
   ~: git clone <https://github.com/jimeh/tmux-themepack.git> ~/.tmux-themepack
   ```

4. install tmux plugins

   ```jsx
   prefix + I
   ```

5. save/restore current session

   ```jsx
   prefix + Ctrl-s
   prefix + Ctrl-r
   ```

### Hammerspoon

1. install: https://www.hammerspoon.org/go/