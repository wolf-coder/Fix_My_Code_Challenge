for f in $(ls | grep ^[0][1-4]) ;
do
    # mv -- "$f" "PRE_$f" ;
    echo $f
    mv "$f" "Ping_$f"
done
