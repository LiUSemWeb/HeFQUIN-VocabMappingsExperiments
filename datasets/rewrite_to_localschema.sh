common_uri="http://www.lehigh.edu/~zhp2/2004/0401/univ-bench.owl#"
escaped_common_uri=$(echo "$common_uri" | sed 's/[\/&]/\\&/g') # escape forward slashes and ampersands

i=0
while [ "$i" -le 9 ];
do
  suffix="$i"
  sed "s/$escaped_common_uri[^>]*/&$suffix/g" < original_datasets/University$suffix.nt > diffschema_datasets/University$suffix.nt
  i=$(( i + 1 ))
done
