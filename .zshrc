# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Path to powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# List of plugins used
plugins=(git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# AUR wrapper
aurhelper="paru"

# Helpful aliases
alias  c='clear' # clear terminal
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias un='$aurhelper -Rns' # uninstall package
alias up='$aurhelper -Syu' # update system/package/aur
alias pl='$aurhelper -Qs' # list installed package
alias pa='$aurhelper -Ss' # list availabe package
alias pc='$aurhelper -Sc' # remove unused cache
alias po='$aurhelper -Qtdq | $aurhelper -Rns -' # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -
alias vc='code --ozone-platform-hint=wayland --disable-gpu' # gui code editor

# Handy change dir shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
alias mkdir='mkdir -p'

# Fixes "Error opening terminal: xterm-kitty" when using the default kitty term to open some programs through ssh
alias ssh='kitten ssh'

# alias
alias tty-clock='tty-clock -c'
alias nv='nvim -c Nvdash'
alias cmatrix='cmatrix -b -a -u 5'

#Star Ship
# eval "$(starship init zsh)"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#-------- PS3 - Playstation 3 Package Handling {{{
#------------------------------------------------------
# DEMO: https://www.youtube.com/watch?v=wdmAYZN-rcU
# REFF: https://wololo.net/talk/viewtopic.php?t=46023
#       https://stackoverflow.com/q/46824020
#       https://stackoverflow.com/a/4701146
#       https://www.youtube.com/watch?v=NyCl8jLLn34

ps3-split-iso() {
  if [ $# -lt 1 ]; then
    echo -e "split ps3 (playstation 3) iso games to 4GB per file to fit on FAT32 device"
    echo -e "\nUsage: $0 <iso>"
    echo -e "\nExample:\n$0 <file.iso>"
    echo -e "$0 SSF4.iso"
    echo -e "$0 TombRaider.iso TheLastOfUs.iso SaintsRow4.iso"
    echo -e "$0 *.iso"
    echo -e "\nOutput Example:
             /SSF4/SSF4.iso.0
             /SSF4/SSF4.iso.1
             /SSF4/SSF4.iso.2
             /SSF4/SSF4.iso.3
             /SSF4/SSF4.iso.4
             "
    echo -e "\nHow To Install PS3 ISO Files:
      For Game.ISO.0..1...2 etc. Move the files to a folder named **PS3ISO** at the root of the USB drive.
      This way, the games can be played/viewed/copied from the Multiman XMB Game column with cover art before copying.
      Multimans file browser (mmOS) doesnt join Game.ISO.0 files when copied. Only in the Multiman XMB.
    "
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    # check if is an iso file and greater than 4GB and if folder exist, skip splitting process (per file) if condition is not met
    filesize=$(stat -c '%s' "$arg")
    while [ "${arg##*.}" = iso ] && [ "$filesize" -ge 4294967295 ] && [ ! -d "${arg%%.*}" ]
    do
      # create folder, split ps3 games to 4GB a piece to work with FAT32 limitations
      mkdir "${arg%%.*}"
      split -a 1 -b 4294967295 -d --numeric-suffixes=0 "$arg" "${arg%%.*}"/"$arg".
    done
  done
}


ps3-split-pkg() {
  if [ $# -lt 1 ]; then
    echo -e "split PS3 (PlayStation 3) PKG games to 3GB per file to fit on FAT32 device"
    echo -e "\nUsage: $0 <pkg>"
    echo -e "\nExample:\n$0 <file.pkg>"
    echo -e "$0 GTA_V.pkg"
    echo -e "$0 NBAJam.pkg Tekken5.pkg Uncharted3.pkg"
    echo -e "$0 *.pkg"
    echo -e "\nOutput Example:
             /GTA_V/GTA_V.pkg.66600
             /GTA_V/GTA_V.pkg.66601
             /GTA_V/GTA_V.pkg.66602
             /GTA_V/GTA_V.pkg.66603
             /GTA_V/GTA_V.pkg.66604
             "
    echo -e "\nHow To Install PS3 Game/Rap Files:
    - Requirements: Download & Install To PS3 > reActPSN http://store.brewology.com/ahomebrew.php?brewid=126
      - Note: reActPSN is for Installing Rap Files
    - Requirements: Download & Install To PS3 > MultiMan (Base) https://store.brewology.com/ahomebrew.php?brewid=24
      - Note: MultiMan is for Installing pkg PS3 Game files

    - PC > Split the PKG Games if is too large to fit on USB device
    - PC > copy exdata/UP1004-NPUB31154_00-GTAVDIGITALDOWNL.rap to USB:/exdata/UP1004-NPUB31154_00-GTAVDIGITALDOWNL.rap
    - PC > copy packages/Grand Theft Auto V/ to USB:/packages/Grand Theft Auto V/
    ----
        USB:/exdata/UP1004-NPUB31154_00-GTAVDIGITALDOWNL.rap
        USB:/packages/Grand Theft Auto V/Grand Theft Auto V.pkg.66600
        USB:/packages/Grand Theft Auto V/Grand Theft Auto V.pkg.66601
        USB:/packages/Grand Theft Auto V/Grand Theft Auto V.pkg.66602
        USB:/packages/Grand Theft Auto V/Grand Theft Auto V.pkg.66603
        USB:/packages/Grand Theft Auto V/Grand Theft Auto V.pkg.66604
    ----
    - IMPORTANT: Plug In Your USB Drive To The USB Port Closes To The PS3 BluRay Drive

    # Installing RAP Files
    - PS3 > User > Create New User > Enter a user name [aa]
    - Switch user/Login as aa: PS3 > User > aa > it will autorename itself to [reActPSN 2.0] profile
    - PS3 > Game > reActPSN > this will install any rap files in your USB:/exdata/

    # Installing PKG Game Files
    - PS3 > Game > Multiman > Press Start+Select (switch to File Manager aka mmOS)
    - File Manager (mmOS) > PS3 Root > **dev_usb000** > packages > highlight Grand Theft Auto V folder > Press O > **Copy** > Press X
    - File Manager (mmOS) > PS3 Root > **dev_hdd0** > Press O > **Paste** > Yes
      - Note: when it transfer to the ps3 hdd, it will auto merge all the Grand Theft Auto V.pkg.6660* files
      - Note2: the merged files on the PS3 internal HDD will be auto deleted once it is installed
    - File Manager (mmOS) > PS3 Root > **dev_hdd0** > Grand Theft Auto V > highlight Grand Theft Auto V.pkg > Press X (twice) > Yes (exit Multiman)
    - PS3 > Game > Package Manager > Install Package Files > **Standard** > Grand Theft Auto V.pkg > Press X (Installing) > Wait a long time
    "
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    # check if is a pkg file and greater than 3GB and if folder exist, skip splitting process (per file) if condition is not met
    filesize=$(stat -c '%s' "$arg")
    while [ "${arg##*.}" = pkg ] && [ "$filesize" -ge 3221225472 ] && [ ! -d "${arg%%.*}" ]
    do
      # create folder, split PS3 games to 3GB per file to work with FAT32 limitations
      mkdir "${arg%%.*}"
      split -a 5 -b 3221225472 -d --numeric-suffixes=66600 "$arg" "${arg%%.*}"/"$arg".
    done
  done
}


ps3-merge() {
  if [ $# -lt 1 ]; then
    echo -e "merge ps3 (playstation 3) pkg games to a single large file"
    echo -e "\nUsage: $0 <file>"
    echo -e "\nExample:\n$0 Yakuza_5_Part1.pkg Yakuza_5_Part2.pkg Yakuza_5_Part3.pkg"
    echo -e "$0 Beyond_Two_Souls_Part*.pkg"
    echo -e "\nOutput Example:
             Yakuza_5_Part1_merged.pkg
             "
    return 1
  fi
  cat "$@" > "${1%.*}"_merged."${1##*.}"
}
# }}}
