#!/bin/bash

# Check if no argument
if [[ -z "$1" ]]; then
    echo "Please provide an element as an argument."
    exit 0
fi

# PSQL command
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Check if input is a number (atomic_number) vs text (symbol/name)
if [[ "$1" =~ ^[0-9]+$ ]]; then
    # Atomic number search (NO quotes!)
    ELEMENT=$($PSQL "SELECT atomic_number, name, symbol, types.type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE atomic_number=$1;")
else
    # Symbol or name search (WITH quotes)
    ELEMENT=$($PSQL "SELECT atomic_number, name, symbol, types.type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE symbol='$1' OR name='$1';")
fi

# Check if element not found
if [[ -z "$ELEMENT" ]]; then
    echo "I could not find that element in the database."
    exit 0
fi

# Parse and format output
echo "$ELEMENT" | while IFS='|' read ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_POINT BOILING_POINT; do
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
done
