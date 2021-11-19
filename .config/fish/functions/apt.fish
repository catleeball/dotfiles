function apt --wraps=dnf --description 'alias apt dnf'
  dnf $argv; 
end
