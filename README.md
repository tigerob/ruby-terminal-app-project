# Project: Ruby Terminal App

## Key Details

**App**: 21 Books You've Been Meaning To Read (21 BYBMTR) - a terminal app to help you choose which book to read next.

**GitHub repository**: https://github.com/tigerob/T1A3

---
<br>

## Help Documentation

### Installation

1. You need to use the Ruby programming language to run this app. If you don't already have Ruby installed, you can refer to the Ruby installation guide [here](https://www.ruby-lang.org/en/documentation/installation/) to install it.
   
2. You need to use Git to download a copy of the app to your home directory. If you don't already have Git installed, you can install it from [here](https://git-scm.com/downloads).
   
3. You also need to use an SSH key to download a copy of the app to your home directory. If you don't already have an SSH key, you can follow [these instructions](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to generate a new SSH key and add it to the ssh-agent.
   
4. Run this command in terminal to Git clone the app from my GitHub repository to a directory of your choosing within your home directory (ensuring that you are in your chosen directory when you run the command):
    ```
    git clone git@github.com:tigerob/T1A3.git
    ```

5. Navigate to the *src* directory.

6. **Dependencies** -  This app requires the following Ruby gems to run properly: *artii* (~> 2.1), *colorize* (~> 0.8.1), *rspec* (~> 3.10), *tty-link* (~> 0.1.1), *tty-progressbar* (~> 0.18.2). You can either install them individually with the command ```gem install <name of gem>``` or you can use the Ruby gem *bundler* to automatically install all dependencies. The latter option is more convenient and you could do that by running the following commands in terminal:
    ```
    gem install bundler
    ``` 
    ```
    bundle install
    ```

## Run

Run the app in any of the following ways with the following commands:

1. Run the shell script for the app:
   ```
   ./run_21BYBMTR.sh
   ```
   
2. Run the shell script for the app opening at the Help Page:
   ```
   ./run_21BYBMTR_with_help_page.sh
   ```
   
3. Run the Ruby file for the app without any command-line arguments:
   ```
   ruby main.rb
   ```
   
4. Run the Ruby file for the app with your choice of the following command-line arguments:
   
   1. run the app opening at the Help Page:
        ```
        ruby main.rb -h
        ``` 
   
   2. run the app with a personal touch incorporating the name you input at \<name>:
        ```
        ruby main.rb -n <name>
        ```

---
<br>

## Software Development Plan

### Purpose

(problem it solves, scope, target audience) (300-500 words)


### Features (300 words)

Features
1. Provide user with a way to choose from the full list of books
2. Provide users with a way to choose by genre
3. Provide users with a way to choose by quiz
4. Provide users with a random choice of book
5. Provide users with a way to exit the app
6. Provide users with a way to access a Help Page for the app

### User interaction
  - How user finds out how to interact with each feature
  - How user interacts with each feature
  - How errors are handled and displayed to the user

### Control-flow diagram

### Implementation (see Trello board)
  - how each feature will be implemented
  - checklist of tasks for each feature
  - prioritises implementation of different features and/or checklist items within a feature
  - provides a deadline for each feature, checklist, and/or checklist item

### Tests
- Automatic
- Manual - https://docs.google.com/spreadsheets/d/1PvqB1MU8PR_kv7414R-fcbAOvyT35I_X-Ep74Ys93eA/edit?usp=sharing