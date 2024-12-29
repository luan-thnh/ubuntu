# Customizing Ubuntu

This guide provides step-by-step instructions for customizing your Ubuntu system.

---

## Prerequisites
Ensure you have sudo privileges to execute the following commands.

---

## Step 1: Install Essential Tools
1. **Install Git**  
   ```bash
   sudo apt install git
   ```

2. **Install Zsh and Oh My Zsh**  
   ```bash
   sudo apt-get install zsh -y
   chsh -s $(which zsh)
   ```

3. **Install Vim and Set as Default Editor**  
   ```bash
   sudo apt install vim -y
   sudo update-alternatives --config editor
   ```

---

## Step 2: Install and Apply Orchis Theme
1. Install theme Orchis Theme repository:  
   [https://www.pling.com/p/2176652/](https://www.pling.com/p/2176652/)
   ```bash
   unzip -o $HOME/Downloads/GTK-Themes.zip -d $HOME/.themes
   ln -sf $HOME/.themes/Orchis-Dark/gtk-4.0/{assets,gtk.css,gtk-dark.css} $HOME/.config/gtk-4.0
   unzip -o $HOME/Downloads/icon-themes.zip -d $HOME/.local/share/icons
   unzip -o $HOME/Downloads/cursors-theme.zip -d $HOME/.icons
   sudo apt install neofetch -y
   unzip -o $HOME/Downloads/neofetch-config.zip -d $HOME/.config
   unzip -o $HOME/Downloads/ubuntu-desktop-settings.zip -d $HOME/Downloads
   dconf load / < $HOME/Downloads/ubuntu-desktop-settings.conf
   ```

3. Install dependencies:  
   ```bash
   sudo apt install curl
   sudo apt install gnome-tweaks
   sudo apt install gnome-shell-extension-manager -y
   ```

4. Apply the theme using Gnome Tweaks.

---

## Step 3: Additional Utilities
1. **Install Common Utilities**  
   ```bash
   sudo apt install rsync
   sudo apt install gdebi
   sudo apt install nautilus-admin
   sudo apt install nautilus-extension-gnome-terminal
   ```

2. **Install Neofetch**  
   ```bash
   sudo apt install neofetch -y
   ```

   ### Configure Neofetch
   - To automatically run Neofetch every time you open the terminal, add it to your shell configuration file:
     ```bash
     echo 'neofetch' >> ~/.bashrc
     source ~/.bashrc
     ```

3. **Install IBus-Unikey for Vietnamese Input**  
   ```bash
   sudo apt-get install ibus-unikey
   ```

4. **Install Audio Tools**  
   ```bash
   sudo apt install pulseaudio
   sudo apt install pavucontrol
   ```

5. **Install and Configure Tmux**  
   ```bash
   sudo apt install tmux
   ```
   
   ### Configure Tmux
   - Create a configuration file:
     ```bash
     nano ~/.tmux.conf
     ```
   - Add the following customization:
     ```bash
     # Change prefix key to Ctrl+a
     set -g prefix C-a
     unbind C-b
     bind C-a send-prefix

     # Enable mouse support
     set -g mouse on

     # Split panes shortcuts
     bind | split-window -h
     bind - split-window -v

     # Status bar appearance
     set -g status-bg black
     set -g status-fg white
     set -g status-left "[#S] "
     set -g status-right "%H:%M %d-%b-%y"

     # Increase scrollback history
     set -g history-limit 10000
     ```
   - Apply the configuration:
     ```bash
     tmux source-file ~/.tmux.conf
     ```

---

## Step 4: Final System Update
- After making all customizations, ensure your system is up-to-date:
  ```bash
  sudo apt update && sudo apt upgrade -y
  ```

---

## Notes
- Explore additional settings with **Gnome Tweaks** and **Gnome Shell Extension Manager**.
- Use `man` pages or official documentation to learn more about each tool.
