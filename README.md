---

Title: Rails API one-to-many lab<br>
Type: Lab<br>
Duration: 1hr+ mins<br>
Creator: Thom Page <br>
Topics: Rails 5 API, One-to-many relationships<br>

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

- stock has one average price
- average price has many stocks

* What **columns** would you want for your tables?

- stocks
  - id, symbol, average_price_id
  
- average price
  - id, USD 

* Does one of your tables get a **foreign key** column? If so, which?

- stocks gets the foreign key of an average price

<br>

* What **controllers** will you need?

- stocks_controller
- average_price_controller

* What **routes** do you want your API to have?

- GET stocks
- GET average_price

* What **actions** will your controller need, given your routes?

- index, show

<br>

* Can you make your API 'self-evident'? Meaning, your API requires little explanation for an end-user?

**Nested Routes:**

* Use nested routes

**Bonus: Charting:**

Try using chart.js to display the data as a line or bar chart. 
<br>

## :dart: **When you think you know the answers to these questions, build your API.**

