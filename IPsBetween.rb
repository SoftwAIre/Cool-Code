
def ipsBetween(start, ending)
  start_arr, end_arr = [], []
  start_arr = start.split(".")
  end_arr = ending.split(".")
  
  start_arr = start_arr.map {|elt| elt.to_i}
  end_arr = end_arr.map {|elt| elt.to_i}
  
  i = start_arr.length - 1
  while i >= 0 # cycle through arrays in reverse
  	p end_arr[i] - start_arr[i]
  	i -= 1
  end
end

ipsBetween("10.0.0.0", "10.0.0.50")#, 50);
ipsBetween("20.0.0.10", "20.0.1.0")#, 246);
