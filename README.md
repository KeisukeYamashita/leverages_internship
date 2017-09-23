# Product Quest

# Version

- Ruby:2.2.5
- Bundler:1.10.3
- RubyonRails:5.0.3
- Mysql2:0.4.9


## Abstract

## How to download

Git clone this repositry to your pc.

```
git init
git clone git@github.com:KeisukeYamashita/leverages_internship.git
```

Get your gems.

```
bundle install --path bundle/vendor --jobs 4
```

## Create database 

Login in to your mysql and create a database.

```
mysql -u root

create table leverage_internship
```

Then put your seed data.

```
bundle exec rake db:seed
```

## How to launch
TODO
