# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Stock.create([
    {symbol: 'AAPL'},
    {symbol: 'TSLA'},
    {symbol: 'GOOG'}
])

AveragePrice.create([
    {price_USD: 150, date: '2020/11/12', stock_id: 1},
    {price_USD: 145, date: '2020/11/11', stock_id: 1},
    {price_USD: 155, date: '2020/11/10', stock_id: 1},
    {price_USD: 100, date: '2020/11/12', stock_id: 3},
    {price_USD: 105, date: '2020/11/11', stock_id: 3},
    {price_USD: 115, date: '2020/11/10', stock_id: 3},
    {price_USD: 900, date: '2020/11/12', stock_id: 2},
    {price_USD: 1005, date: '2020/11/11', stock_id: 2},
    {price_USD: 1025, date: '2020/11/10', stock_id: 2},
])