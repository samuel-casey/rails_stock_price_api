---

Title: Rails API one-to-many lab<br>
Type: Lab<br>
Duration: 1hr+ mins<br>
Creator: Thom Page <br>
Topics: Rails 5 API, One-to-many relationships<br>

FRONTEND: https://github.com/samuel-casey/rails-stock-api-frontend

---

## :clock930: Rails API one-to-many lab

* **PLAN A BACKEND API THAT HAS A ONE-TO-MANY RELATIONSHIP**

### :memo: DATA-MODELING AND DESIGNING AN API

Your boss wants you to design and build an API. The API is going to deliver some data about the **average share prices** for saleable **stocks** on the stock market. 

You know you will be dealing with **average prices** and **stocks**, and that the two things are related.

Answer the following questions:

<br>

* What **models** will you need? Why?
  - stock
  - average price

<br>

* What is the relation between **average prices** and **stocks**?

  - stock has many average prices
  - average price has one stock

* What **columns** would you want for your tables?

  - stocks
    - id, symbol

  - average price
    - id, price_USD, date, stock_id 

* Does one of your tables get a **foreign key** column? If so, which?

  - average_price gets the foreign key of a stock

<br>

### Data Model

![entity relationship diagram]('./ERD%20for%20ruby_stock_price_api.png')
### Routing Table

| Controller     | Route                            | HTTP Method | DB Action | Description                                |
|----------------|----------------------------------|-------------|-----------|--------------------------------------------|
| stocks         | /stocks                          | GET         | INDEX     | Get all stocks                             |
| stocks         | /stocks                          | GET         | SHOW      | Get a single stock                         |
| average_prices | /stocks/:stock_id/average_prices | POST        | CREATE    | Add a new stock price for a specific stock |
| average_prices | /average_prices                  | GET         | INDEX     | Get all average_prices for stocks          |

  - index, show
  - index, create

<br>

* Can you make your API 'self-evident'? Meaning, your API requires little explanation for an end-user?

**Nested Routes:**

* Use nested routes

  - /stocks/:id/average_price
