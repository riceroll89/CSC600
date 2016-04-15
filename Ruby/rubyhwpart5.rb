class Triangle 
	def initialize(a,b,c)
		@a, @b, @c = a,b,c
	end
	
	def getA()
		return @a
	end
	
	def getB()
		return @b
	end
	
	def getC()
		return @c
	end
	
	def test
		type=" "
		if @a+@b<@c||@a-@b>@c
			type="not a triangle" 
		elsif @a==@b && @a==@c
			type= "equilateral" 
		elsif @a==@b||@b==@c||@c==@a
			type="isosceles"
		else type = "scalene"
		end
		
		if @a**2==@b**2+@c**2||@b**2==@a**2+@c**2||@c**2==@a**2+@b**2
			then type=" right triangle"
		end
					
		return type		
	end
	
	def perimeter()
		if self.test() !="not a triangle" 
			perimeter = @a+@b+@c 
		end
	end
	
	def area()
		s=0.5*(@a+@b+@c)
		if self.test() !="not a triangle" 
			area = Math.sqrt(s*(s-@a)*(s-@b)*(s-@c))
		end		
	end
end

triangle = Triangle.new(3,4,5)
print "it is a ", triangle.test, "\n"
print "perimeter is ", triangle.perimeter(), "\n"
print "area is ", triangle.area(), "\n\n"

triangle2 = Triangle.new(3,5,5)
print "it is a ", triangle2.test, "\n"
print "perimeter is ", triangle2.perimeter(), "\n"
print "area is ", triangle2.area(), "\n"