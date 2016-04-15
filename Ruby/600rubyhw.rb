#if-then
i, j = 1, 1
if i == j then puts "i and j are equal\n\n" end

#if-else
k = 2
if j == k
	puts "j and k are equal\n\n"
else
	puts "j and k are not equal\n\n"
end

#if-elsif-else
if k == 1
	puts "j equals 1\n\n"
elsif k == 2
	puts "j equals 2\n\n"
else
	puts "j does not equal 1 or 2\n\n"
end

#unless, unless-else
unless i == j
	puts "i and j are not equal\n\n"
else
	puts "i and j are equal\n\n"
end

#if/unless modifiers
puts "i and j are not equal\n\n" unless i == j
puts "i and j are equal\n\n" if i == j

#case, case with selector
age = 13
old = case age
	when 1 then "infant"
	when 2..3 then "toddler"
	when 4..12 then "child"
	when 13..19 then "teenager"
	when 20..45 then "adult"
	when 45..64 then "middle aged adult"
	else "senior citizen"
	end
puts "you are a " + old + "\n\n"
















