def meters(x)
	idx = 0
	n = x
	measurements = ["m","km","Mm","Gm","Tm","Pm","Em","Zm","Ym"]
	while n >= 1000
		n /= 1000.0
		idx += 1
	end
	if n % 1.0 == 0
		n = n.to_i
	else
#		n = (n * 1000.0).to_s
		n
	end
p	n.to_s + measurements[idx]
end

meters(1_500)
meters(1_005_000)
meters(1)#, "1m")
meters(1000)#1km
meters(12300000)#, "12.3Mm")

=begin

Yotta	Y 	1_000_000_000_000_000_000_000_000	 
zetta	Z	1_000_000_000_000_000_000_000
exa		E	1_000_000_000_000_000_000
peta	P	1_000_000_000_000_000
tera	T	1_000_000_000_000
giga	G	1_000_000_000
mega	M	1_000_000
kilo	k	1_000

=end

