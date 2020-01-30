class Triangle
  attr_accessor :s1, :s2, :s3
 
  def initialize (s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end 
  
  def kind 
    if [s1, s2, s3].any? { |s| s <= 0 }
      raise TriangleError
      
    elsif s1 == s2 and s1 == s3
      :equilateral
    elsif (!(s1 == s2) and s2 == s3) or (!(s1 == s3) and s1 == s2) or (!(s2 == s3) and s1 == s3)
      :isosceles
    elsif !(s1 == s2) and !(s1 == s3) and !(s3 == s2)
      :scalene
    end 
  end 
  
  
  class TriangleError < StandardError
    # triangle error code
  end
end
