require './lib/batter.rb'
require './lib/topping.rb'

class Item
  attr_reader :id,
              :type,
              :name,
              :ppu,
              :batters,
              :toppings

  def initialize(data)
    @id = data[:id]
    @type = data[:type]
    @name = data[:name]
    @ppu = data[:ppu]
    @batters = []
    @toppings = []
  end

  def load_batters(batter_data)
    batter_data.map do |batter|
      batter = Batter.new({
        id: batter["id"],
        type: batter["type"]
      })
      @batters << batter
    end
  end

  def load_toppings(topping_data)
    topping_data.map do |topping|
      topping = Topping.new({
        id: topping["id"],
        type: topping["type"]
      })
      @toppings << topping
    end
  end


end
