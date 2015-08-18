function psk
  ps aux | percol | awk '{ print $2 }' | xargs kill $argv'
end
