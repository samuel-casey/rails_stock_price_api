## About

A basic stock price API built with Ruby on Rails and Postgresql in 3 hours as part of a General Assembly bootcamp. Allows a user to view and create average stock prices for a user from the command line or via the rails console or Postman. 

Also built a very simple React frontend for viewing the api's data that uses chart.js, which can be found here:
https://github.com/samuel-casey/rails-stock-api-frontend

### Data Model

![entity relationship diagram](./rails_stock_price_API_ERD.png)

### Routing Table

| Controller     | Route                            | HTTP Method | DB Action | Description                                |
|----------------|----------------------------------|-------------|-----------|--------------------------------------------|
| stocks         | /stocks                          | GET         | INDEX     | Get all stocks                             |
| stocks         | /stocks                          | GET         | SHOW      | Get a single stock                         |
| average_prices | /stocks/:stock_id/average_prices | POST        | CREATE    | Add a new stock price for a specific stock |
| average_prices | /average_prices                  | GET         | INDEX     | Get all average_prices for stocks          |

### Instructions for using the API

1) Fork and clone this repository
   
2) Open up a new terminal and `cd` into the directory in which you saved the repository
   
3) run `bundle e rails db:setup && rails db:migrate` to set up & migrate the database based on the database.yaml, Gemfile, and migration files
   
4) run `rails s` to start the rails server locally

5) either fork and clone the [frontend repository](https://github.com/samuel-casey/rails-stock-api-frontend) and run `npm start` to view the frontend for this project, or interact with it through the rails console or Postman
