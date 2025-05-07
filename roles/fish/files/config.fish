# set lang env
set LANG en_US.UTF-8

# ウェルカムメッセージを無効にする
set -g fish_greeting ""

# vi-mode in command prompt
function fish_user_key_bindings
    fish_default_key_bindings -M insert
    fish_vi_key_bindings insert
end

# set aws default profile
set -x AWS_PROFILE "admin"

# delete virtual env prompt at head
set -x VIRTUAL_ENV_DISABLE_PROMPT "true"

# for direnv
eval (direnv hook fish)

# cargo
fish_add_path $HOME/.cargo/bin

# alias and abbr
for abbr_name in (abbr -l)
    abbr -e $abbr_name
end

# mv -i
abbr -a mv "mv -i"
# cp -i
abbr -a cp "cp -i"
# terraform
abbr -a tf "terraform"
# git
abbr -a gs "git status"
abbr -a gc "git checkout"
abbr -a gcb "git checkout -b"
## show local branches
abbr -a gb "git branch"
abbr -a gba "git branch --all"
## show remote branches 
abbr -a gbr "git branch -r"
## delete local branch
abbr -a gbd "git branch -d"
## git graph
abbr -a gl "git log --graph --oneline --decorate=full --date=short --format='%C(yellow)%h%C(reset) %C(magenta)[%ad]%C(reset)%C (auto)%d%C(reset) %s %C(cyan)@%an%C(reset)'"
## move to git root
abbr -a gr "cd (git rev-parse --show-superproject-working-tree --show-toplevel | head -1)"
## push / push local new branch
abbr -a gps "git push"
abbr -a gpsf "git push --set-upstream origin (git branch --contains=HEAD | cut -c3-)"
## pull
abbr -a gpl "git pull"
## stash / stash with new file
abbr -a gsh "git stash"
abbr -a gss "git stash save -u"

# ls
abbr -a la "ls -A"
abbr -a ll "ls -alF"
abbr -a count_files "ls -AF | grep -v / | wc -l"

# rm
abbr -a rr "rm -rf"

# rm abbr
abbr -a rmabbr 'for a in (abbr --list); abbr --erase $a; end'
#
abbr -a cl "clear"

# alias
alias gac='git add . && git commit -m'
alias ls=lsd
