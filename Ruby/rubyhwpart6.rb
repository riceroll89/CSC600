class Array
	def sorted?
		0.upto self.length do |i|
			if self[i] <= self[i+1] then
				return "+1"
			elsif self[i] >= self[i+1]
				return "-1"
			else
				return 0
			end
		end
	end

	def limited?(amin,amax)
		i=0
		begin
			if self[i]<=amax && self[i]>=amin
				return "true"
			end
			i+=1
		end until i>=self.size
	end
end



array = Array.new
array = [1, 2, 8, 4, 5]
puts array.sorted?
puts array.limited?(1, 5)