# Super Mario's Speciality Foods

[View Live Site](https://super-marios-speciality-foods.herokuapp.com/)

This is a web application built in Rails that shows the current product inventory of Super Mario's Speciality Food store. Users can enter new products, leave reviews and ratings on specific products. Each product will display individually on it's own page and has CRUD functionality. There are database scopes for top 3 highest rated products, average rating for each product, and product with most reviews.

### Setup/Install Requirements

 Run these following commands in the terminal
 * `git clone https://github.com/jaybones90/marios-super-foods-RAILS.git`
 * `cd marios-super-foods-RAILS`
 * `bundle install`
 * `rails db:create`
 * `rails db:migrate`
 * `rails db:seed`
 * `rails server`

### Known Bugs
* The application breaks if you try to use the search function multiple times without reloading the page or navigating back to the all products list.

### Technologies Used
* Ruby 2.2.2
* Rails 5.1.2
* PostgreSQL

### By Authors
Jason Ainsworth
### Support and contact details
jasoncruze@gmail.com
### License
_MIT_
Copyright (c) 2017 **Jason Ainsworth**
