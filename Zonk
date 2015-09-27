def get_score(dice)
  val = 0
	h = Hash.new(0)  
  z = 0
	
#############################
# To hash - create special method from module
	dice.each { |elmt| h[elmt] +=1 }

# return early if specifics match
	v_arr = h.values
	v_size = v_arr.length
	k_arr = h.keys

	if v_size == 6
	  return 1000
	elsif v_size == 3 && v_arr.all? { |elmt| elmt == 2 }
    return 750
  elsif v_size == 2 && v_arr.all? { |elmt| elmt == 3 }
  	0.upto(1) do |i|
	  	1.upto(6) do |j| 
	  		if k_arr[i] == j
	  			special = j == 1 ? 900 : 0
		 			val += (100 + special) * j
		 		end
 			end
 		end
 		return val
  end
#############################
# finding values in ascending order
  1.upto(4) do |i|
 		1.upto(6) do |j| 
			special = j == 1 ? 900 : 0
 			if h[j] == (2 + i)
 				checker = (100 + special) * i * j
 				val = checker if val < checker
 			end
 		end
	end
#############################	
# special case combination
	val += 100 * h[1] if h[1] < 3
	val += 50 * h[5] if h[5] < 3
#############################	
# return val
  val.zero? ? "Zonk" : val
end

puts get_score([1,2,3,4,5,6])
