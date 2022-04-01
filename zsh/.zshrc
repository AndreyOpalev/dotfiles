# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/andlev/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
### GO GIT TOOLS START
alias gs='git status'
alias gl='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(auto)%d %C(green)%s" --date=short --graph --all' # красивый гит лог ВСЕХ веток. (auto) НЕ РАБОТАЕТ на git 1.X (старее 2 версии), заменить на цвет, например, (red)
alias gl1='git log --pretty=format:"%C(yellow)%h %Cred%ad %C(white)%an%C(auto)%d %C(green)%s" --date=short --graph' # красивый гит лог ТЕКУЩЕЙ ветки. (auto) НЕ РАБОТАЕТ на git 1.X (старее 2 версии), заменить на цвет, например, (red)
alias go='git checkout' # сменить ветку, чекаутнуться на коммит (для просмотра). go -b branch создаст ветку branch и перейдет на нее
alias gc='git commit -m' # закоммитить все что в индексе. После этой команды пишем в кавычках текст коммита
alias gca='git commit -a -m' # закоммитить все измененное, кроме untracked. После этой команды пишем в кавычках текст коммита
alias gd='git diff -w' # ПОЛЕЗНАЯ команда. дифф только измененного кода. не покажет изменения прав файлов, пустых строк, отступов.
alias gm='git merge -Xignore-all-space --no-edit' # мердж, который не создаст конфликтов из-за отступов, пустых строк и тд. НЕ РАБОТАЕТ на git 1.X
alias gr='git rebase' # ребейз
alias grh='git reset --hard' # стереть все изменения в WD и индексе. не трогает untracked
alias gf='git fetch'
alias grh1='git reset --hard HEAD~1' # стереть все изменения в WD и индексе + стереть текущий коммит. удобно, когда надо просто стереть последний коммит
alias gss='git show --stat --pretty=fuller' # удобно посмотреть что в коммите. если не передавать ей хеш коммита, покажет что есть в текущем коммите
alias gh1='go HEAD~1' # глянуть предыдущий коммит
alias ga='git add -v' # подробный git add (с выводом отчета)
alias gt='git tag --sort version:refname' # Корректный вывод тегов
alias gcp='git cherry-pick'
alias cherrybeast='function _cherrybeast(){ git cherry-pick $(git log --pretty=format:"%h" --grep="$1"  --all --reverse) -Xtheirs; };_cherrybeast'
alias back='git reset --hard HEAD@{1}'
alias gbc='git branch -a --contains '
### GO GIT TOOLS START

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/andlev/Programs/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/andlev/Programs/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/andlev/Programs/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/andlev/Programs/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

AUTHOR="Andrey Opalev"
AUTHOR_EMAIL="andrey.o.opalev@yandex.ru"
