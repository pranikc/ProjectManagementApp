# README

<h1>Soundlite</h1>

A music database that allows you to stream some of your favorite songs -  developed by Pranik Chainani and Mohamed Mohamud

This Project was created using Ruby on Rails, with some use of JavaScript, CSS, ActiveRecord/Storage, and SQlite3. 
Non-user generated data was created from the Ruby gem Faker.

Gems
* sinatra-activerecord - for accessing databases
* sqlite3 - for database management
* require_all - for accessing files from within different directories of the program
* faker - for generating random data
* 


<h1>Setup Instructions</h1>
NOTE: Make sure you have properly installed Ruby on your terminal. Follow the instructions below after verifying that you have correctly installed ruby through the following command. It should return a Ruby version if you have Ruby installed.

ruby --version
The next step is installing the required gems. This can be done with the following command:

bundle install
In case you run onto an error while calling the command above, try installing each gem individually as follows:

gem install name_of_gem

Next: run the commands rails db:migrate, followed by rails db:seed in order to seed your database

The test suite can now be run by running the command 
    rails s

This command will prompt you to a local host URL that you can input into your browser.

