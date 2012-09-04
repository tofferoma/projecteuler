row = 0
lowest = 99
lname = ""
file = File.open("football.dat")
file.each do |line|
	if (row > 0 && row != 18) then
		pos, name, p, w, l, d, f, sep, a,  pts = line.split()
		dif = (f.to_i-a.to_i).abs.to_i 
		if (lowest > dif) then
			lowest = dif
			lname = name		
		end
	end
	row += 1
end
puts lname
