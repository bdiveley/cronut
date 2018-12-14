class Topping
  attr_reader :id, :type

  def initialize(data)
    @id = data[:id]
    @type = data[:type]
  end
  
end
