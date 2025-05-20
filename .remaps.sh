cd ~/Programming

compileAndRun(){
  cd ../
  make
  printf '\n'
  cd $OLDPWD
  ./EXE
}

theNewMake(){
  cd ../
  make
  cd $OLDPWD
}

fehBackgroundChange(){
  cd $HOME
  ./.feh
  cd $OLDPWD
}

PROMPT_DIRTRIM=3
alias cls='clear'
alias exe='./EXE'
alias EXE='./EXE'
alias feh='fehBackgroundChange'
alias car='compileAndRun'
alias make'theNewMake'
alias resource='source ~/.bashrc'

alias colemak='setxkbmap us -variant colemak'
