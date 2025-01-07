![my neofetch](https://github.com/andrewmamdouh122/andrewmamdouh122-mydotfiles/assets/134093499/57fd119f-ef25-4825-b494-f3a550cd377a)


# Kitty + Neofetch + Image Display Setup

This script sets up the **Kitty terminal**, **Neofetch** with image support, and copies the necessary configuration files into your home directory (`~/.bashrc`) and `~/.config/kitty/` and `~/.config/neofetch/`. It also provides a configuration for Neofetch to display images in the Kitty terminal.

## Prerequisites

Before running the script, ensure that you have the following packages installed:

- **Kitty** terminal
- **Neofetch** for system information
- **w3m**, **w3m-img**, **ImageMagick** (for displaying images in the terminal)

The script will automatically install these dependencies if they are not already installed.

## Installation Instructions

### Step 1: Clone the Repository

Clone the repository to your local machine.

```bash
git clone https://github.com/andrewmamdouh122/mydotfiles.git
cd mydotfiles
chmod +x install.sh
./install.sh
