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

* What **controllers** will you need?

  - stocks_controller
  - average_price_controller

* What **routes** do you want your API to have?

  - GET stocks
  - GET, POST average_price

* What **actions** will your controller need, given your routes?

  - index, show
  - index, create

<br>

* Can you make your API 'self-evident'? Meaning, your API requires little explanation for an end-user?

**Nested Routes:**

* Use nested routes

  - /stocks/:id/average_price

**Bonus: Charting:**

Try using chart.js to display the data as a line or bar chart. 
<br>

## :dart: **When you think you know the answers to these questions, build your API.**
