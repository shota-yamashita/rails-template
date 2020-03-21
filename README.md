# rails-template

## Requirements
- MySQL
- ruby 2.7.x
- Rails 6.0.x

## Usage
To generate a Rails application using this template, pass the `-m` option to `rails new`, like this:

```
rails new rails-sample-app \
  -m https://raw.githubusercontent.com/shota-yamashita/rails-template/master/template.rb -d mysql
```

or execute local file (before clone repository)

```
rails new rails-sample-app \
  -m rails-template/template.rb -d mysql
```
