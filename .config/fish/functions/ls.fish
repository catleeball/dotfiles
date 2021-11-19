function ls --wraps='exa --all --long --octal-permissions --color=always' --description 'alias ls exa --all --long --octal-permissions --color=always'
  exa --all --long --octal-permissions --color=always $argv; 
end
