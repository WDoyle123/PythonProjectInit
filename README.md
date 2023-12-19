# PythonProjectInit

## About

When coding in Python my directories are very consistant and therefore it made sense to automate the slightly tedious process of setting up a Python project.

## Setup

1. **Git Clone**
```
git clone https://github.com/WDoyle123/PythonProjectInit.git
cd PythonProjectInit
```
2. **Make script executable**
```
chmod +x ppi.sh
```
3. **Move script to a directory in your PATH**
```
mv ppi.sh /usr/local/bin/ppi
```
4. **Delete clone (Optional)**
```
cd ..
rm -rf PythonProjectInit
```
5. **Now you can initialise a Python project by calling**:
```
ppi
```

## Code

```
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
```