require './lib/batter.rb'
require './lib/item.rb'
require './lib/topping.rb'
require 'json'
require 'pry'

file = File.read('./data/cronut.json')
data = JSON.parse(file)["items"]["item"]


all_items = []

data.map do |item|
  item_obj = Item.new({
          id: item["id"],
          type: item["type"],
          name: item["name"],
          ppu: item["ppu"]
        })
    item["batters"]["batter"].map do |batter|
      batter = Batter.new({
        id: batter["id"],
        type: batter["type"]
      })
      item_obj.batters << batter
    end
    item["topping"].map do |topping|
      topping = Topping.new({
        id: topping["id"],
        type: topping["type"]
      })
      item_obj.toppings << topping
    end
    all_items << item_obj
end
