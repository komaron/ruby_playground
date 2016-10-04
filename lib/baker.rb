# An example to play around with private methods
# Chapter 5 of WGR
class Cake
  def initialize (batter)
    @batter = batter
    @baked = true
  end
  class Egg ; end
  class Flour ; end
  class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    return Cake.new(@batter)
  end
  def pour_flour
    @batter.push(Flour.new)
  end
  def add_egg
    @batter.push(Egg.new)
  end
  def stir_batter ; end
  private :pour_flour, :add_egg, :stir_batter
  end
end
# The gist of the private methods is the baker can tell himself to
# add and egg to the batter but no one else can send a message to the
# baker. Or You can call the bake_cake method which will return you a
# cake but you cannot call the intermediate methods to bake the cake.
# Private methods cannot be called with a reciever
# You can call private methods of a class only when self is a instance
# of that class
