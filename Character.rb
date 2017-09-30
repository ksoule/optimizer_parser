class Character


  def initialize(args = {})
    @name = args[:name] || "unknown"
    @abilities = args[:abilities]
  end

end