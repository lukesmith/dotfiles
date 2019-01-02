function for_each_line_in() {
  filename=$1

  while IFS='' read -r LINE || [ -n "$LINE" ]; do
    $2 $LINE
  done < $filename
}