require "benchmark"
#puts Benchmark.measure {1_000_000.times{program}}

def multiplication_table
	row, col = 12,12
  arr = [] # create array to host values
  1.upto(row) do |i| # how many rows / arrays are we making?
  	# create range from 1 to col, to array, map values vs i to create mult table
		(1..col).to_a.each do |val| 
			unless val == 1
				printf "%4s",val * i
			else 
				
				printf "%2s",val * i
			end
		end 
		print "\n"
  end
end
multiplication_table


puts Benchmark.measure {10_000.times{multiplication_table}} 
#  8.900000   4.800000  13.700000 ( 24.922704)
