function delmerged
  argparse t/to -- $argv
  if set -ql _flag_to
    git branch --merged $argv | grep -v -e 'qa' -e 'staging' -e 'main' -e 'temp' | xargs git branch -d
  else
    git branch --merged master | grep -v -e 'qa' -e 'staging' -e 'master' -e 'temp' | xargs git branch -d
  end
end
