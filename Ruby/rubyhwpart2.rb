i = 1
#loop-do
loop do
	puts i
	i += 1
	break if i == 9
end
puts

#while-do
while i > 0 do
	puts i
	i -= 1
end
puts

#until-do
until i > 5 do
	puts i
	i += 1
end
puts

#while/until modifiers
begin
	puts i
	i -= 1
end while i > 0
puts

begin
	puts i
	i += 1
end until i > 5
puts

#for-in-do
array = [1, 2, 3, 4]
for element in array
	puts element
end
puts

#upto - downto iteration
0.upto(5) {|i| puts i}
puts

5.downto(0) {|i| puts i}
puts

#times (implicit/explicit counter)
2.times {puts "hey you there"}
puts
3.times{puts "yo"}
puts

#each, each_with_index
[:a, :b, :c].each do |i|
	puts i
end
puts

[:a, :b, :c].each_with_index do |i, index|
	puts "#{i} at index #{index}"
end
puts

#map
[1, 2, 3, 4, 5].map{|i| puts i}
puts

#step
(0..10).step(2) do |i|
	puts i
end
puts