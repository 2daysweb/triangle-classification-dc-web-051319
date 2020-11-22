class Triangle
  attr_reader :a, :b, :c
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    is_triangle?
  end

  def kind 
    if((@a == @b && @b != @c) || (@a == @c && @c != @b) || (@b==@c && @c != @a))
      return :isosceles
    end
    if(@a == @b && @b == @c)
      return :equilateral
    end    
     if(@a != @b && @b != @c)
    return :scalene
  end 
end

def is_triangle?
  if(@a+@b <= @c || @a+@c <= @b || @a + @c <= @b || @b + @c <= @a)
    raise TriangleError
  end
end 
class TriangleError < StandardError
end
end




