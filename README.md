# Bash Exercises

#### https://github.com/DeepakPrabakar/unix-linux-interview-questions

1. Delete blank lines in file
2. Print number of times each word appears in a file
3. List all the files in directory except .txt and .pdf
4. Rename all .jpg files to .jpeg
5. Delete files of size more than 100mb in a folder which are older than 90 days
6. Reverse the words in a sentence
7. Given an input file having lines with alphabets and numbers. Print only the distinct alpha-numberic lines.
8. Given a comma separated input file with items, category and cost. Display the category and its sum.
9. Output of following command ps -ef | awk '{ print $1}' | sort | uniq | wc -l
10. Kill process based on user and process.
11. Print contents of a file starting from the nth line.
12. Write a command to calculate the total size of all pdf files in the directory.
13. Write a command to delete the first and last line in every file in the directory and rename it.
14. Given a file with records. Print the sum of m where name=aman
15. Given a file with numbers. Sort each line.
16. Bash shell script to reverse a string / word.
17. Reverse last 4 digits of a string.

#### https://www.guru99.com/shell-scripting-interview-questions.html

18. Given a file, replace all occurrence of word "ABC" with "DEF" from 5th line till end in only those lines that contains word "MNO"
19. Given a file, write a command sequence to find the count of each word.
20. How will you find the 99th line of a file using only tail and head command?
21. Print the 10th line without using tail and head command.

-----------------

## 1 Delete blank lines in file

```bash
    sed '/^$/d' 01/test-file.txt
```

This commands is using the basic sed syntax `[addr]X[options]` where addr is the regexp `^$` to catch an empty line and X is a single-letter command, in this case `d` (delete).

## 2 Print number of times each word appears in a file

```bash
    tr ' ' '\n'  < 02/test-file.txt | tr '\t' '\n' | sed '/^$/d' | sed 's/[.,\(\)\"]//g' | sed "s/[\'\`\’]//g" | awk '{print tolower($0)}' | sort | uniq -c | sort -rn
```

## 3 List all the files in directory except .txt and .pdf

```bash
    ls -l 03 | awk '{print $9}' | sed '/^$/d' | sed '/.txt/d' | sed '/.pdf$/d'
```

## 4 Rename all .jpg files to .jpeg

```bash
    for i in $(ls -l 04 | awk '{print $9}' | sed '/^$/d' | grep .jpg); do mv ./04/$i ./04/$(sed 's/jpg/jpeg/g' <<< $i); done
```

## 5 Delete files of size more than 100mb in a folder which are older than 90 days

```bash
    find ./05/ -mtime -90 -type f -exec du {} \; | awk '{ if($1 > 100000){print $2}}' | xargs rm
```

## 6 Reverse the words in a sentence

```bash
    echo "Ciao sono io" | tr ' ' '\n' | tail -r | tr '\n' ' '
```

## 7 Removed

```bash

```

## 8 Given a comma separated input file with items, category and cost. Display the category and its sum

```bash
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
```

## 9 Output of following command ps -ef | awk '{ print $1}' | sort | uniq | wc -l

```bash

```

## 10 Kill process based on user and process

```bash

```

## 11 Print contents of a file starting from the nth line

```bash

```

## 12 Write a command to calculate the total size of all pdf files in the directory

```bash

```

## 13 Write a command to delete the first and last line in every file in the directory and rename it

```bash

```

## 14 Given a file with records. Print the sum of m where name=aman

```bash

```

## 15 Given a file with numbers. Sort each line

```bash

```

## 16 Bash shell script to reverse a string / word

```bash

```

## 17 Reverse last 4 digits of a string

```bash

```
