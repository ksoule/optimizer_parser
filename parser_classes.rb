parser classes

class Other_Player

  def initialize(args = {})
    @name = args[:name] || "unknown"
    @abilities = args[:abilities]

  end

end

class NPC

  def initialize(args = {})
    @name = args[:name] || "cannon_fodder"


end
