def sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break unless swapped
  end
end

v= [1,3,6,4,9,7,5,2,8]
sortV = v
print "unsorted array = "
for i in v do print i, ", " end
puts
print "sorted = "
sort(sortV)
for i in sortV do print i, " " end
puts

class Array
		a = self
		b = sort(a)
	def sorted?()
		if a!=b 
			return 0
		elsif	a[0]<=a[1]
			return +1
		else return -1
		end
	end

	def limited?(amin,amax)
		i=0
		begin
			if a[i]<=a.max && a[i]>=a.min
				return "true"
			end
			i+=1
		end until i>=a.size
	end
end



array = Array.new
array = [1,2,3,4,5]
array.sorted?
array.limited?(1,9)