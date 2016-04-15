module Enumerable
	def sum
		self.inject(0){|i, j| i + j }
	end

	def mean
		self.sum/self.length.to_f
	end

	def variance
		m = self.mean
		sum = self.inject(0){|i , j| i +(j-m)**2 }
		(1/self.length.to_f*sum)
	end

	def standard_deviation
		return Math.sqrt(self.variance)
	end
end
  

def mean_sigma(v)
	return v.mean, v.standard_deviation
end

v = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts mean_sigma(v)
