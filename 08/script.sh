awk '
BEGIN{}
{
    split($0,arr,",")
    sumArr[arr[2]] = sumArr[arr[2]] + arr[3]
    arrKey[arr[2]] = arr[2]
}
END {
    for (i in sumArr){
        print arrKey[i] " " sumArr[i]
    }
}' ./08/test-input.txt