#!/bin/bash

create_dir_and_init() {
    mkdir -p "$1"
    touch "$1/__init__.py"
}

# Create directories
mkdir data src figures
create_dir_and_init src/calculations 
create_dir_and_init src/visualisations
create_dir_and_init src/entities

touch src/main.py
touch requirements.txt

# Python env
python3 -m venv venv

# Create a .gitignore file
echo -e "*.pyc\n__pycache__/\nvenv/" > .gitignore

echo "Python Project Initialised"
