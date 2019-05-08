iterated_hash = {}
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
	hsh.each do |key, value|
		iterated_hash[key] = value + 1
	end
	iterated_hash
end

p iterated_hash

