# Set default homebrew architecture
# alias brew='arch -arm64 /opt/homebrew/bin/brew'

# Brew
alias brewfile='brew update && brew bundle --file ~/.dotfiles/Brewfile'

# Git
alias wip='git add . && git commit -m "WIP"'
alias commit='git add . && git commit -m'

# Directories
alias dev='cd ~/dev'
alias sites='cd ~/dev/sites'
alias dot='cd ~/.dotfiles'

# Projects
alias dotfiles="cd ~/.dotfiles"
alias gigtune='cd ~/dev/sites/gigtune'
alias crm='cd ~/dev/sites/crm'

# Laravel
alias art='php artisan'
alias comp='php composer'
alias fresh='php artisan migrate:fresh --seed'
alias test='php artisan test'
alias pint='./vendor/bin/pint'
alias ide='php artisan ide-helper:generate && php artisan ide-helper:models --nowrite'
alias analyse='./vendor/bin/phpstan'

# Terraform
alias tf='terraform'

# iCloud Drive
alias drive='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/'
