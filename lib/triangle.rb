class Triangle
  attr_accessor :a, :b, :c 
    def initialize(a, b, c)
      @a = a 
      @b = b
      @c = c 
    end
    
    def kind
      
      if (@a == 0 || @b == 0 || @c == 0) false 
      end 
      
      if(@a==@b && @b==@c) 
        return :equilateral
      elsif (@a==@b || @b == @c || @a == @c)
      return :isosceles 
      else
      return :scalene
    end 
  end

end
