echo "Line number:"
read
awk -v x=$REPLY '
BEGIN{
    i=0
}
{
    i++
    if (i>x){
        print $0
    }
}
END {}' ./11/test-input.txt