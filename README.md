# Valleys of Dinosaurs

Rails app made during week 1 of the 9-week Codaisseur Academy.

This app was an exercise to get to know the Rails framework and PostgreSQL.

## Steps

While working on this app I followed these steps:

1. Setting up project with Rails and PostgreSQL.
2. Creating Dinosaur model.
3. Setting up controllers and views for Dinosaurs.
4. Creating Valley model and association.
5. Setting up controllers and views for Valleys.

## Database Structure

#### Dinosaurs  
 * name:string
 * age:integer
 * image_url:string
 * valley_id:bigint

#### Valleys
  * name:string

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:Abohte/valleys-of-dinosaurs.git
cd valleys-of-dinosaurs
bundle install
rails db:create db:migrate db:seed
rails server
```
