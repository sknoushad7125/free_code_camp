#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "$($PSQL "CREATE TABLE IF NOT EXISTS users (user_id SERIAL PRIMARY KEY, username VARCHAR(22) UNIQUE NOT NULL);")"
echo "$($PSQL "CREATE TABLE IF NOT EXISTS games (game_id SERIAL PRIMARY KEY, user_id INT REFERENCES users(user_id), secret_number INT, guesses INT);")"

echo -e "\nEnter your username:"
read USERNAME

USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

if [[ $USER_ID_RESULT != "" ]]; then
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID_RESULT;")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID_RESULT;")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "$($PSQL "INSERT INTO users(username) VALUES('$USERNAME');")"
  USER_ID_RESULT=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

SECRET_NUMBER=$((1 + RANDOM % 1000))
echo -e "\nGuess the secret number between 1 and 1000:"
GUESS_COUNT=0

while true
do
  read GUESS
  
  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    continue
  fi
  
  GUESS_COUNT=$((GUESS_COUNT + 1))
  
  if [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]; then
    echo "It's higher than that, guess again:"
  else
    echo "$($PSQL "INSERT INTO games(user_id, secret_number, guesses) VALUES($USER_ID_RESULT, $SECRET_NUMBER, $GUESS_COUNT);")"
    echo "You guessed it in $GUESS_COUNT tries. The secret number was $SECRET_NUMBER. Nice job!"
    exit 0
  fi
done

