#3.9 example
#Remove Argument Order dependencies solution 
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring:, cog:, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def wheel
    @wheel ||= Wheel.new(rim,tire)
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumfrence
    diameter * Math::PI
  end
end
puts Gear.new(cog: 11, chainring: 52, wheel: Wheel.new(26, 1.5)).gear_inches
print Gear.new(wheel: Wheel.new(22, 2.5), cog: 11, chainring: 62, ).gear_inches