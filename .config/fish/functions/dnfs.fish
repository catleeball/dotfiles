function dnfs --wraps='sudo dnf search' --description 'alias dnfs sudo dnf search'
  sudo dnf search $argv; 
end
