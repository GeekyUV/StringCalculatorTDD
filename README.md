
# String Calculator Rspec Test Suite

this is a TDD for string calculator written in ruby on rails 

## Testing

Test the module under lib/string_calculator.rb. The add method can take 0, 1, or 2 numbers, and will return their sum.

The following test cases are covered:
- for an empty string it will return 0,eg: "" = 0
- for single number it will return the number, eg: "5" = 5
- for two numbers it will return the sum,eg: "2,3" = 5
- with numbers separated by commas will retun sum, eg: "1,2,3,4,5" = 15
- with new lines between numbers instead of comma will return sum, eg: "1\n2,3" = 5
- for custom delimeter, eg: "//;\n1;2" = 3
- for negative_number, eg: "-5" will through exception Negatives not allowed
- for multiple negatives "1,2,-3,-4,-5" will through exception with numbers in error message
- numbers greater than 1000 are ignored in sum, eg: "2,1002" = 2
- with custom delimiters of any length it calculates the sum, eg: "//[\*\*\*]\n1\*\*\*2\*\*\*3" = 6
- with multiple custom delimiters it calculates sum,       eg:  "//[\*][%]\n1*2%3" = 6
- with custom delimeter of more than one char it calculates sum, eg: "//[\**][%%]\n1**2%%3" = 6




# Getting Started

- clone the repository

```bash
git clone https://github.com/GeekyUV/StringCalculator.git

```

- installed the required Gem for rspec(Gems for Rpec included in gemfile)
```
bundle install
```


check test cases

- run this command
```
bundle exec rspec 
```
- all test cases are covered to check coverage run the following command in app directory

```
 open coverage/index.html
```


#### you are ready to go! 
- this is is implementation for Rspec gem test unit suites 

### Guide to Rspec installation 
- add these in your gemfile.rb
```
gem 'rspec-rails'
gem 'simplecov', require: false
gem 'rails-controller-testing' #for assert template
```
-run bundle install to install dependencies
```
bundle install
```
- install rspec run this command to add spec folder in which we will write test cases 
```
rails generate rspec:install
```

- Create spec files for your controllers, models, and any other components you want to test. For example, you can create a spec file for your controller name yuvicontroller then spec file name would be yuvicontroller_spec.rb

- run bundle exec rspec to run test files
- to check covergae open coverage/index.html

#### Happy learning! :)




