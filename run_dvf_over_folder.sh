src_dir=$1

# for nested folders
for fname in "$src_dir"/*/*
do
    arrIN=(${fname//// })
    echo "In: $fname"
    echo "Out: ./results/${arrIN[2]}/${arrIN[3]}"   
    python dvf.py -i $fname -o "./results/${arrIN[2]}"
done


# for one folder
# for fname in "$src_dir"/*
# do
#     # echo $fname
#     arrIN=(${fname//// })
#     # # echo ${arrIN[0]}    
#     out="./results/${arrIN[2]}"
#     # echo $out  
#     python dvf.py -i $fname -o $out
# done