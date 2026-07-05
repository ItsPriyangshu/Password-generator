<<TODO
A password generator
TODO

letters=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")
numbers=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9")
symbols=("!" "#" "$" "%" "&" "(" ")" "*" "+")

read -p "How many letters you want in your password: " letter
read -p "How many numbers you want in your password: " number
read -p "How many symbols you want in your password: " symbol

new_pass=()
for ((item=1 ; item<=letter ; item++))
do
	random_index=$((RANDOM % ${#letters[@]}))
	new_pass+=("${letters[random_index]}")
done

for ((item=1 ; item<=number ; item++))
do
	random_index2=$((RANDOM % ${#numbers[@]}))
	new_pass+=("${numbers[random_index2]}")
done

for ((item=1 ; item<=symbol ; item++))
do
	random_index3=$((RANDOM % ${#symbols[@]}))
	new_pass+=("${symbols[random_index3]}")
done

password=""

total=$((letter+number+symbol))

for ((item=1 ; item<=total ; item++))
do
	random_final=$((RANDOM % ${#new_pass[@]}))
	password+=${new_pass[random_final]}
done

echo ""
echo "Your new generated password is: $password"
echo ">>Date: $(date "+%Y-%m-%d, %H:%M:%S")  <<||>>  Generated Password:     $password" >> password_history.pdf
echo ""
