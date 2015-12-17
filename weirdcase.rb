def weirdcase str
  i = 0
  i2 = 0
  
  str = str.split(' ')
  while i < str.length
  	while i2 < str[i].length
 	  if i2 % 2 == 0
 	  	str[i][i2] = str[i][i2].upcase
 	  else
 	    str[i][i2] = str[i][i2].downcase
 	  end
 	  p i2 += 1
 	  p str
  	end
  	i2 = 0 
 	i +=1
  end
  p str.join(" ")
end

#there is a much better way to do this but I suck at this right now. 
#I don't know why my each/map/each_with_index methods weren't working.
