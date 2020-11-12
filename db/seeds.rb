# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Stock.create([
{symbol: 'AAPL', average_price_id: 1},
{symbol: 'GOOG', average_price_id: 1},
{symbol: 'TSLA', average_price_id: 2}
])

# AveragePrice.create([
#     {price_USD: 100},
#     {price_USD: 200}
# ])