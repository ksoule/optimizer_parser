class NPC < Character

 def initialize(args = {})
    super
    @name = args[:name] || "cannon_fodder"
  end

end