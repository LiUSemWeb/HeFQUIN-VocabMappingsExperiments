i=0
while [ "$i" -le 9 ];
do
  mkdir -p dataset/member_$i
  cp -r ../../datasets/diffschema_datasets/University$i.nt  dataset/member_$i/
  i=$(( i + 1 ))
done