# Number Guessing Game

A complete freeCodeCamp Relational Database project - bash number guessing game with PostgreSQL.

## Features
- Random number generation (1-1000)
- User authentication and game stats tracking
- Exact user story messaging requirements
- Integer input validation
- PostgreSQL database persistence
- 5+ git commits with conventional prefixes

## Quick Setup
```bash
mkdir number_guessing_game && cd number_guessing_game
chmod +x number_guess.sh
psql --username=freecodecamp --dbname=postgres -c "CREATE DATABASE number_guess;"
./number_guess.sh
