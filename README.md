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
   sudo apt install nautilus-admin
   sudo apt install nautilus-extension-gnome-terminal
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

## Step 4: Final System Update
- After making all customizations, ensure your system is up-to-date:
  ```bash
  sudo apt update && sudo apt upgrade -y
  ```

---

## Notes
- Explore additional settings with **Gnome Tweaks** and **Gnome Shell Extension Manager**.
- Use `man` pages or official documentation to learn more about each tool.
