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
    # your code here
  end
end
