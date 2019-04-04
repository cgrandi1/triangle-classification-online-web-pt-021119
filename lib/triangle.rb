class Triangle 
  
 
 attr_accessor :side_1, :side_2, :side_3, :type
 
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3 
  end 
  def kind 
    if @side_1 == @side_2 && @side_2 == @side_3 
      @type = :equilateral 
    elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
      @type = :isosceles
    elsif @side_1 > @side_2 || @side_2 > @side_3 || @side_3 > @side_1 
      @type = :scalene
    elsif @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0 
      raise TriangleError 
    else @side_1 + @side_2 <= @side_3 || @side_2 + @side_3 <= @side_1 || @side_1 + @side_3 <= @side_2
      raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
    def message 
      
  end 
end 
