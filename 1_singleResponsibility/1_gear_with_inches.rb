class Gear
  attr_accessor :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog
  end

  def inches
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(32, 22, 26, 1.5).inches
puts Gear.new(52, 12, 24, 1.25).inches