## RUBY-APP-BACKEND TECH-TEST

## THE PROJECT.

Given a log file which contains the visits to a particular web
and the ip of the visitor, create a ruby script which accepts a log file as an argument and return a list of organize data, in this case:

- List of the most visited webs ordered from high to low.
- List of the unique views ordered high to low.

## SETUP THE PROJECT.

This project is coded in ruby so to have installed Ruby 2.7.1 and Bundler is a pre-requisite.

To install Ruby follow this link:

[Ruby official docs](https://www.ruby-lang.org/en/documentation/installation/)

or in much more intuitive way go to:

 [How to prepare a Ruby environment](https://www.preparetocode.io/) and follow the instructions. Be aware that the instructions are good enough but a little bit old. Just be ready to install the correct Ruby version. (2.7.1).
 
Once you have Ruby 2.7.1 in your system :

 Clone this repository 

 ```
  $ git clone git@github.com:rafahg/back-end-project.git

 ``` 

 Once the repository is your system: 

  ```
  $ bundle install 

  ```
  
  To install the ruby gems and dependencies.

   To run the test :

    ```
    $ rspec
    ```
  
  To run the script and obtain the result in the CLI, just run in the root:
  
   - Giving permissions to the file, to make it executable.
  ```
  $ chmod +x ./bin/web_info.rb
  ```
   - Run the script with the file as a parameter.
  
  ```
  $ ./bin/web_info.rb webserver.log
  ```

Of course the script is ready to accept any other log file in the same format.

## APPROACH AND METHODOLOGY.

 - The project has been done using a strong OOP approach, so I have intended to create a class for a separate task, the intention, to create code more maintainable and easy to test.

 - The approach I have taken when creating the methods has been the single responsibility and as simple as possible. In other words, one method, one task.

 - The I have tried to encapsulate the classes the best way possible, so the class which at the end manage the data receives all the objects with all the data already prepared.

- All the code has been tested with 100% coverage and the tests can be viewed in the /spec folder of the project.

 <strong>How Code is organised</strong>

 The code is divided into 3 different classes.
  - File manager: Is in charge of taking care of the file and pass it to DataManager 
  - DataManager class is in charge of processing the data and get it ready for the display class.
  - PrintData is the class in charge of displaying the data for the script user.

  Every class has been coded in a separate file in the lib folder and has its testing suite in the spec folder.

### Next implementations.

The project needs more testing, so to create testing edge cases is needed.

 A nice and easy new functionality would be to add geolocation to the IP so it would be possible to see the country and city of the visitors.

 I have already done the research and it is easily doable, the plan is to add a gem which is connected to an API DB which will return the data which will be processed in a new class and passed to the class in charge of Displaying the data.



