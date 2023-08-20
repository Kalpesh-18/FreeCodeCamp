echo hello bash

echo hello bash > stdout.txt

echo hello bash >> stdout.txt

bad_command 2> stderr.txt

echo hello bash 1> stdout.txt

echo $NAME 1> stdout.txt

read $NAME < name.txt

echo Kalpesh | read NAME

cat < name.txt

echo Kalpesh | ./script.sh 2> stderr.txt 1> stdout.txt

cat < name.txt | ./script.sh 2> stderr.txt 1> stdout.txt

wc kitty_ipsum_1.txt

wc kitty_ipsum_1.txt -l

wc kitty_ipsum_1.txt -w

wc kitty_ipsum_1.txt -m

echo "~~ kitty_ipsum_1.txt info ~~" > kitty_info.txt
echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -l >> kitty_info.txt
echo -e "\nNumber of words:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -w >> kitty_info.txt
echo -e "\nNumber of characters:" >> kitty_info.txt
cat kitty_ipsum_1.txt | wc -m >> kitty_info.txt
echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
grep 'meow[a-z]*' kitty_ipsum_1.txt -o | wc -l >> kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep 'meow[a-z]*' kitty_ipsum_1.txt -n | sed 's/([0-9]+).*/\1/' -r >> kitty_info.txt
echo -e "\nNumber of times cat, cats, or catnip appears:" >> kitty_info.txt
grep 'cat[a-z]*' kitty_ipsum_1.txt -o | wc -l >> kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep 'cat[a-z]*' kitty_ipsum_1.txt -n | sed 's/([0-9]+).*/\1/' -r >> kitty_info.txt

echo -e "\n\n~~ kitty_ipsum_2.txt info ~~" >> kitty_info.txt
echo -e "\nNumber of lines:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -l >> kitty_info.txt
echo -e "\nNumber of words:" >> kitty_info.txt
cat kitty_ipsum_2.txt | wc -w >> kitty_info.txt
echo -e "\nNumber of characters:" >> kitty_info.txt
wc -m < kitty_ipsum_2.txt >> kitty_info.txt
echo -e "\nNumber of times meow or meowzer appears:" >> kitty_info.txt
grep 'meow[a-z]*' kitty_ipsum_2.txt -o | wc -l >> kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep 'meow[a-z]*' kitty_ipsum_2.txt -n | sed 's/([0-9]+).*/\1/' -r >> kitty_info.txt
echo -e "\nNumber of times cat, cats, or catnip appears:" >> kitty_info.txt
grep 'cat[a-z]*' kitty_ipsum_2.txt -o | wc -l >> kitty_info.txt
echo -e "\nLines that they appear on:" >> kitty_info.txt
grep 'cat[a-z]*' kitty_ipsum_2.txt -n | sed 's/([0-9]+).*/\1/' -r >> kitty_info.txt



touch translate.sh
chmod +x translate.sh
./translate.sh kitty_ipsum_1.txt

diff kitty_ipsum_1.txt doggy_ipsum_1.txt

diff kitty_ipsum_1.txt doggy_ipsum_1.txt --color

history

history > command.txt

#-----------------------------translate.sh---------------------------

#!/bin/bash

cat $1 | sed 's/catnip/dogchow/g; s/cat/dog/g; s/meow|meowzer/woof/g' -r
