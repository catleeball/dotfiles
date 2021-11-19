function hex-pw --description "hex-pw <count>"
  if test (count $argv) = 1
    openssl rand -hex (math $argv\*2) | fold -w4 | paste -sd'-' -
  else
    echo "Exactly one argument is required: count of tokens to produce."
  end
end

