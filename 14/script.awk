BEGIN {
    RS="--xx--\n"
    FS="\n"
}
{
    split($3,data,"=")
    if (data[2] == "aman"){
        split($2,intData,"=")
        sum+=intData[2]
    }
}
END {
    print("The sum is: ", sum)
}