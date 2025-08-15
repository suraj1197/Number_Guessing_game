#!/bin/bash

#connecting to databse
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


echo "Enter your username:"
read input_username

#check for username in database
Database=$($PSQL "SELECT a.user_id, a.username, b.games_played, b.best_score from users a JOIN user_info b ON a.user_id = b.user_id  WHERE username='$input_username'");
if [[ -z $Database ]]

then #inserting username in database and getting the user_id to connect to the other table
    insert=$($PSQL "INSERT INTO users(username) VALUES('$input_username')")
    insert_id=$($PSQL "SELECT user_id from users WHERE username = '$input_username'")
    insert_user_id=$($PSQL "INSERT INTO user_info(user_id,games_played,best_score) VALUES($insert_id,0,0)")
    echo "Welcome, $input_username! It looks like this is your first time here."
else
# puttin the data in to variables to print it accordingly
IFS="|" read user_id user_name games_played best_game <<< "$Database"
echo "Welcome back, $user_name! You have played $games_played games, and your best game took $best_game guesses."
fi
#fetching the games a user played already
no_of_games=$games_played

#generating random number
random_number=$(shuf -i 1-1000 -n 1)

#starting the game for the user
echo "Guess the secret number between 1 and 1000:"
read input
let no_of_games++

#check for integer

if ! [[ $input =~ ^-?[0-9]+$ ]] 
then 
echo "That is not an integer, guess again:"
read input
fi

count=1

while [ $random_number != $input ]
do
 if ! [[ "$input" =~ ^[0-9]+$ ]]; then
      echo "That is not an integer, guess again:"
      read input
      continue
  fi
let count++
if [[ $random_number -gt $input  ]]
  then 
  echo "It's higher than that, guess again:"
    read input
    else
    echo "It's lower than that, guess again:"
    read input  
fi
done

#printing the result
echo "You guessed it in $count tries. The secret number was $random_number. Nice job!"
#checking if the user is new or an old one via different variables
current_user_id=${user_id:-$insert_id}

#updating games played and best score
add_no_of_games=$($PSQL "UPDATE user_info SET games_played = $no_of_games WHERE user_id=$current_user_id")
if (( best_score == 0 || count < best_score ))
then
update_best_score=$($PSQL "UPDATE user_info SET best_score=$count WHERE user_id=$current_user_id")
fi
exit

