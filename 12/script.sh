awk '/^-(.*).pdf$/
{
    x+=$5
}; END{
    print "total size: ",x
}'