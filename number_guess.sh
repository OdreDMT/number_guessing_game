#!/bin/bash
# it seems to be working 
# Have a Break and check again later for the couple failing tests
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -q -c"

echo "Enter your username:"
read USERNAME

EXISTING_USER=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

if [[ -z $EXISTING_USER ]] 
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users (username) VALUES ('$USERNAME');"
else 
  USER_ID=$EXISTING_USER
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM won_user_games WHERE user_id='$USER_ID';")
  BEST_GAME=$($PSQL "SELECT MIN(guess_count) FROM won_user_games WHERE user_id='$USER_ID';")
  
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0

while true
do
  echo "Guess the secret number between 1 and 1000:"
  read NUMBER_GUESSED

if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]];
then
  echo "That is not an integer, guess again:"
  continue
  fi

  (( GUESS_COUNT++ ))

  if [[ $NUMBER_GUESSED -gt $RANDOM_NUMBER ]]; 
  then 
    echo "It's lower than that, guess again:"

  elif [[ $NUMBER_GUESSED -lt $RANDOM_NUMBER ]];
  then
    echo "It's higher than that, guess again:"
    else
      break
  fi
done

 USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
 $PSQL "INSERT INTO won_user_games (user_id, guess_count) VALUES ($USER_ID, $GUESS_COUNT);"

echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
