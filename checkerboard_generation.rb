def checkerboard(n)
  arr = ""
  return arr if n <= 0
  t = false
  n.times do |i|
  	t = i.even?
    n.times do
		arr += t ? "[r]": "[b]"
		t = !t
    end
    arr += "\n"
  end
  arr
end
