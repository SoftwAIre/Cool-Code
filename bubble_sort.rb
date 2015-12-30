def bubble_sort(arr = [0,3,4,5,6,3,2,1,4,57,8,8,6,5,4])
	i = 0
	temp = nil
	chng = 0
	loop do
		while i < arr.length - 1
			if arr[i] > arr[i+1]
				temp = arr[i+1]
				arr[i+1] = arr[i]
				arr[i] = temp
				chng += 1
			end
			i+=1
		end
		break if chng.zero?
		i = 0
		chng = 0
	end
	arr
end
