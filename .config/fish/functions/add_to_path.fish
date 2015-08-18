function add_to_path --description 'Persistently prepends paths to your PATH'
  if test -d $argv
    set -x PATH $argv $PATH
  end
end
