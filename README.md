# Welcome to Ruby Cordoba Web Site

## Installation

ruby-cordoba-web-site is a Rails 3.2.9 application.

Dependencies:

* Ruby 1.9.3
* PostgreSQL
* Bundler

Not a mandatory one but makes it much easier for a development environment:

* rvm

To install:

    $ git clone git@github.com:ruby-cordoba/ruby-cordoba-web-site.git
    $ cd ruby-cordoba-web-site

For the purpose of this document we assume that you have installed the latest stable `rvm` (which at the time of writing is `1.17.2`). And we also assume that you have the latest stable version of `Ruby 1.9.3` which is at `patch level 327`.

Now, let's create an `.rvmrc` file to store our rvm configuration and re-use it:

    $ rvm --rvmrc --create 1.9.3-p327@ruby-cordoba; cd ..; cd ruby-cordoba-web-site

We do the _dance_ of going out of the directory and back in to reload the `.rvmrc` file in our current environment.

In the global gemset for the ruby version you are using you should have `bundler`:

    $ rvm use 1.9.3-p327@ruby-cordoba
    $ gem install bundler

Create a new role in Postgresql

    $ sudo su - postgres
    $ psql template1
    $ create role rubycordoba with login createdb;
    $ exit
    $ sudo service postgresql restart

And then install the rest of the gems we need:

    $ bundle install
    $ rake db:create:all
    $ rake db:migrate
    $ rails s

And you should be able to browse to [http://localhost:3000/](http://localhost:3000/) and you should see the application.

## Ruby Cordoba url

[http://www.rubycordoba.org/](http://www.rubycordoba.org)
