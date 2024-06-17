common_uri="lubm:"
escaped_common_uri=$(echo "$common_uri" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

i=0
mkdir -p mappings
while [ "$i" -le 9 ];
do
  suffix="$i"
  sed "s/$escaped_common_uri[^ \|)\)]*/&$suffix/g" < mappings_complete.ttl > mappings/mappings_comp$suffix.ttl
  i=$(( i + 1 ))
done
