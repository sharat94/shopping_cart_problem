class Warehouse
  attr_accessor :location, :details

  def initialize(location, details)
    @location = location
    @details = details
  end
end