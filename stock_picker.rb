def stock_picker(arr=[17,3,6,9,15,8,6,1,10])
	#check if arr is array else rescue
	#check if arr.include?(!(class==FixNum)) else rescue
	max_val, buy, sell = nil, nil, nil
	arr.each_index do |i|
		arr[i...(arr.length)].each_index do |j|
#			print "i index: " + i.to_s + "\t i val:" + arr[i].to_s
#			puts "\t j index: " + (i+j).to_s + "\t j val:" + arr[i+j].to_s
			if (max_val.nil? || max_val < (arr[i+j] - arr[i]))
				max_val = arr[i+j] - arr[i]
				buy = i
				sell = i+j
			end
#			p max_val
		end
	end
	return [buy, sell]
end

p stock_picker([4,3,6,9,2,5,3,5,8])
p stock_picker
