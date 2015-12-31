# trying to alter/add to the enumerable class

module Enumerable
	
	def my_each
		#my_each, a method that is identical to #each but (obviously) 
		#does not use #each. You'll need to remember the yield statement. 
		#Make sure it returns the same thing as #each as well.
	
		return false if !(self.is_a? Array)
		idx = 0
		while idx < self.length
			self[idx]
			idx += 1
		end
	end
	
	def my_each_with_index
	
		return false if !(self.is_a? Array)
		idx = 0
		while idx < self.length
			yield(self[idx], idx)
			idx += 1
		end
	end
	 
	def my_select
		return false if !(self.is_a? Array)
		#my_select in the same way, though you may use #my_each in your
		# definition (but not #each).
		
	end
	 
	def my_all
		return false if !(self.is_a? Array)
		idx  = 0
		arr = Array.new
		while idx < self.length
			arr << self[idx] if self[idx] == checker
			idx +=1 
		end
		return arr
	end
	
	def my_any?(val)
		return false if !(self.is_a? Array)
		
		@val = val
		!(self.none?(@val))
	end

	def my_none(val)
		return false if !(self.is_a? Array)
		@val = val
		!(self.any?(@val))
	end

	def my_count(val)
		return false if !(self.is_a? Array)
		
		ctr = 0
		idx = 0
		while idx < self.length
			ctr +=1 if self[idx] == val
			idx += 1
		end
		return ctr
	end

	def my_map
		return false if !(self.is_a? Array)		
		yield()
	end

	def my_inject(val)
		return false if !(self.is_a? Array)
		idx = 0
		
		val.is_a? Integer ? @val = val : val = 0
		while idx < self.length
			@val = @val + self[idx]
			idx += 1
		end
		return @val
	end
#Test your #my_inject by creating a method called #multiply_els which 
# multiplies all the elements of the array together by using #my_inject, 
# e.g. multiply_els([2,4,5]) #=> 40

#Modify your #my_map method to take a proc instead.

#Modify your #my_map method to take either a proc or a block, executing 
# the block only if both are supplied (in which case it would execute both 
# the block AND the proc).
end
