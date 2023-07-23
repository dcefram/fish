function shareimg
  argparse 'i/image'= 'o/output'= -- $argv

  if test -z $_flag_i
    echo "Missing -i, please specify which image to share"
    return 1
  end

  set -l output $_flag_o

  if test -z "$output"
    set output $_flag_i
  else
    echo "zebra"
  end

  # resize image and save to ~/Pictures/blog/
  sips -Z 1200 $_flag_i -o ~/Pictures/blog/$output

  # we upload to gcp
  gcloud storage cp ~/Pictures/blog/$output gs://rmrz-blog.appspot.com

  # copy to clipboard
  echo "https://storage.googleapis.com/rmrz-blog.appspot.com/$output" | pbcopy
end