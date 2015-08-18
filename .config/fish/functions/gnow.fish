function gnow
  if [ $argv ]
    set date $argv
  else
    set date (date +"%s %z")
  end
  env GIT_COMMITTER_DATE="$date" git commit --amend --date "$date" -C HEAD
end
