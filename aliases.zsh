# Set default homebrew architecture
alias brew='arch -arm64 /opt/homebrew/bin/brew'

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

# Git
alias commit='git add . && git commit -m'
alias wip='commit "WIP"'

# Terraform
alias tf='terraform'
