function ripcord --wraps='firejail --appimage --nogroups --noroot --timeout=03:00:00 --private --shell=none /home/cat/.local/bin/ripcord' --wraps='firejail --appimage --nogroups --noroot --private --shell=none /home/cat/.local/bin/ripcord' --description 'alias ripcord firejail --appimage --nogroups --noroot --private --shell=none /home/cat/.local/bin/ripcord'
  firejail --appimage --nogroups --noroot --private --shell=none /home/cat/.local/bin/ripcord $argv; 
end
