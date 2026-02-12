# Bike Rental Shop

This project implements an interactive bike rental shop using Bash scripting and PostgreSQL, as part of the freeCodeCamp "Learn Bash and SQL by Building a Bike Rental Shop" course in the Relational Database certification.

## Overview

The application manages bike inventory, customer registrations, rentals, and returns through a menu-driven Bash interface connected to a PostgreSQL database. It features tables for bikes, customers, and rentals with relationships via foreign keys.

Key functionalities include listing available bikes, renting/returning bikes, and viewing rental history.

## Prerequisites

- PostgreSQL installed and running.
- Bash shell environment (Linux/macOS or WSL on Windows).
- VS Code with Docker and Git for the freeCodeCamp workshop environment (recommended).

## Setup Instructions

1. Create the database: `createdb bikes`.
2. Connect to the database: `psql -d bikes`.
3. Run the SQL setup script (e.g., `bikes.sql`) to create tables: bikes (bike_id, brand, model, available), customers (customer_id, name, phone), rentals (rental_id, bike_id, customer_id, date_rented).
4. Make the Bash script executable: `chmod +x bike-shop.sh`.
5. Run the script: `./bike-shop.sh`.

## Database Schema

| Table     | Columns                          | Purpose                  |
|-----------|----------------------------------|--------------------------|
| bikes    | bike_id (PK), brand, model, available (bool) | Track bike inventory |
| customers| customer_id (PK), name, phone   | Store customer details |
| rentals  | rental_id (PK), bike_id (FK), customer_id (FK), date_rented | Record rentals |

## Features

- View all bikes and available bikes.
- Register new customers.
- Rent a bike (checks availability, updates status).
- Return a bike (sets available to true).
- View rental history by customer.

## Usage Example

Run `./bike-shop.sh` to see the menu:






Select options to interact; inputs trigger SQL queries via `psql`.

## What You'll Learn

- Bash scripting: case statements, user input, loops, functions.
- SQL: CREATE TABLE, INSERT, SELECT, UPDATE, JOIN queries.
- Database integration from Bash using `psql`.

## Troubleshooting

- Ensure PostgreSQL user has permissions (e.g., `freecodecamp` user).
- Check forum for common issues like VM loading in freeCodeCamp.
