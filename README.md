# shota-yamashita/rails-template

## Requirements
- MySQL
- ruby 2.7.x
- Rails 6.0.x
- ChromeDriver

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

## What is included?

#### These gems are added to the standard Rails stack

* [awesome_print][]
* [better_errors][]
* [brakeman][]
* [pagy][]
* [sidekiq][]

#### Linter
* [haml_lint][]
* [rubocop][]
* [scss_lint][]

[awesome_print]:https://github.com/michaeldv/awesome_print
[better_errors]:https://github.com/charliesome/better_errors
[brakeman]:https://github.com/presidentbeef/brakeman
[pagy]:https://github.com/ddnexus/pagy
[sidekiq]:https://github.com/mperham/sidekiq

[haml_lint]:https://github.com/sds/haml-lint
[rubocop]:https://github.com/bbatsov/rubocop
[scss_lint]:https://github.com/sds/scss-lint

#### CircleCI
* RSpec
* haml_lint (optional)
* rubocop (optional)
* scss_lint (optional)

※ Default CircleCI setting, Not run linter commands.  
If use linter commands, please uncomment the specify code. (in .ciecleci/config.yml)
