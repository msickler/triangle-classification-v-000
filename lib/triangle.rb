class Triangle
  attr_accessor :a, :b, :c 

  def initialize
    @a = a 
    @b = b 
    @c = c 
  end

  def kind
    if (@a + @b) <= @c || @a + @c <= @b || @b + @c <= @a || self.any? <= 0
      raise TriangleError    
    elsif @a == @b == @c 
      :equilateral 
    elsif @a == @b || @b == @c || @a == @c 
      :isosceles
    else :scalene
    end
  end


end

class TriangleError < StandardError
end