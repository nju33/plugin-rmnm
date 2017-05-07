function rmnm -d "Find node_modules/ and remove it"
  set -l ctime_value (test -n "$argv[1]"; and echo $argv[1]; or echo 14)
  find . -name node_modules \
         -type d \
         -prune \
         -ctime +{$ctime_value} \
         -exec echo '{}' \; \
         -exec rm -rf '{}' +
  echo ...removed
end
