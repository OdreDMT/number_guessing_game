#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=<database_name> -t --no-align -c"

echo "Enter your username:"
read USERNAME

EXISTING_USER=$(§PSQL "SELECT username FROM users WHERE username='$USERNAME';")

if [[ -z $EXISTING_USER ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users (username) VALUES ('$USERNAME');"

else 
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM won_user_games WHERE user_id='$USER_ID';")
  BESTE_GAME=$($PSQL "SELECT (MIN(guess_count), -1) FROM won_user_games WHERE user_id='$USER_ID';")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))
GUESS_COUNT=0
NUMBER_GUESSED=-1

