class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def name
    @name
  end

  def calories
    @calories
  end

  def name=(name)
    @name = name
  end

  def calories=(calories)
    @calories = calories
  end


  def healthy?
    @calories < 200
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5
  end

  def flavor
    @flavor
  end

  def flavor=(flavor)
    @flavor = flavor
  end

  def delicious?
    @flavor != "licorice"
  end
end
