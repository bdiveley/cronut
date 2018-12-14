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

end
