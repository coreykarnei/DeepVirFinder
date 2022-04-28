src_dir=$1

for fname in "$src_dir"/*
do
    # echo $fname
    arrIN=(${fname//// })
    # # echo ${arrIN[0]}    
    out="./results/${arrIN[2]}"
    # echo $out  
    python dvf.py -i $fname -o $out
done