require './lib/item.rb'
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
    item_obj.load_batters(item["batters"]["batter"])
    item_obj.load_toppings(item["topping"])

    all_items << item_obj
end

binding.pry
