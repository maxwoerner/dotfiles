# dotfiles

## Introduction

This repository serves as my way to maintain and setup my Mac. It is deeply inspired by [Dries Vints' dotfiles](https://github.com/driesvints/dotfiles) who also offers great learning material on this topic. Check out his [blog post](https://driesvints.com/blog/getting-started-with-dotfiles) or watch the [screencast on Laracasts](https://laracasts.com/series/guest-spotlight/episodes/1).

Everything needed to install my preferred setup of macOS is detailed in this readme.

## Fresh macOS setup

Follow the instructions below to set up a new Mac.

### Backup your data

If you're migrating from an existing Mac, you should first make sure to backup all of your existing data. Go through the checklist below to make sure you didn't forget anything before you migrate.

- Did you commit and push any changes/branches to your git repositories?
- Did you remember to save all important documents from non-iCloud directories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your local database?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?

### Setting up your Mac

After backing up your old Mac you may now follow these install instructions to setup a new one:

1. Update macOS to the latest version through system preferences
2. [Generate a new public and private SSH key](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) by running:

   ```zsh
   curl https://raw.githubusercontent.com/maxwoerner/dotfiles/main/ssh.sh | sh -s "<your-email-address>"
   ```

3. Clone this repo to `~/.dotfiles` with:

   ```zsh
   git clone git@github.com:maxwoerner/dotfiles.git ~/.dotfiles
   ```

4. Make the installation script executable with:

   ```zsh
   chmod +x ~/.dotfiles/fresh.sh ~/.dotfiles/clone.sh
   ```

   And run the installation with:

   ```zsh
   ~/.dotfiles/fresh.sh
   ```

5. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`

6. Restart your computer to finalize the process

7. Launch the Fig application to finalize the setup

Your Mac is now ready to use!

## Maintain existing macOS setup

- To adjust you MacOS settings simply edit the [`.macos`](./.macos) file and run the following command:

  ```zsh
  source ~/.dotfiles/.macos
  ```

- To install additional software simply add the specific entry in your [`Brewfile`](./Brewfile) and update the Homebrew recipes:

  ```zsh
  brew update
  ```

  Afterwards, run install all dependencies with bundle:

  ```zsh
  brew bundle --file ~/.dotfiles/Brewfile
  ```

## Notes

- MacOS settings are specified in the [`.macos`](./.macos) file. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).
- Check out the [`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.
- Custom aliases can be added via the [`aliases.zsh`](./aliases.zsh) file. If you need to tweak your `$PATH` check out the [`path.zsh`](./path.zsh) file. These files get loaded in because the `$ZSH_CUSTOM` setting points to the `.dotfiles` directory.
