# Create Prime Table App

## How to run
    Clone the repository onto your own device. Run `bundle install` to install neeeded dependencies. 

    This is a command line app. To run this app, navigate to the file you cloned and type `ruby app/run_create_prime_table.rb int` where `int` is the number of prime numbers you want the app to display in the table. 

    To run the rspec tests, make sure you have run `bundle install` to have rspec loaded then run `rspec tests/prime_table_spec.rb` that will run the test file and the output will be shown in the test file. 

    Note: if you arent able to successfully run `bundle install` you may need to run `bundle install --path vendor/bundle` instead as an alternative. 

## What im pleased with
    I enjoyed this exercise cause i have not done anything like this with only prime numbers it was a unique challenge. I am pleased with how my sieve of eratosthenes turned out. Due to not being able to use trial divison i needed a different approach to find prime numbers. I also am pleased with my table creation. The table looks good in the console (until you get too many prime numbers)

## What i would do with more time
    I would first work on my sieve. The sieve works by finding all the prime numbers up to a certain amount. this is currently a hard limit of 100,000,000. So the app can only get a few million prime numbers. I would like to make that be loaded as needed so in theory someone could get a table of a billion prime numbers or more. I would also like to add more specific command line support. Instead of having to type the file name, id like to make specific commands that would enable a user to have a more direct approach to make a prime number table. 

