=begin
find top, left, right, bottom-most positive binary values in least number of cell checks for 2-D array
=end

def arr_reader(arr)
	left,right,top,bott = nil,nil,nil,nil
	row,col,cell_reads = 0,0,0
	
	(0...(arr.length)).step(2) do |col| # first step towards a checkerboard
		(0...(arr.length)).step(1) do |row| # reverse col vs row  # add checker after this step. If 1, go into checker.
			top = row if arr[row][col] == 1 && (top.nil? || row < top) 
			right = col if arr[row][col] == 1 && (right.nil? || col > right)
			left = col if arr[row][col] == 1 && (left.nil? || col < left)
			bott = row if arr[row][col] == 1 && (bott.nil? || row > bott)
			cell_reads += 1
		end
	end
	output = 
"""
Cell Reads: #{cell_reads}
Top: #{top}
Left: #{left}
Bottom: #{bott}
Right: #{right}
"""
	puts output
end

sample = [[]]

arr_reader(sample)

############################################################
	def inward_spiral(height, width, current_height, current_width, top_most, bottom_most, right_most, left_most, arr1)
		if ((!top_most.nil?) && (!bottom_most.nil?) && (!left_most) && (!right_most)) || height <= 0 || width <= 0
			return top_most, bottom_most, right_most, left_most
		end

		p top_most.to_s + " t"
		p bottom_most.to_s + " b"
		p left_most.to_s + " l"
		p right_most.to_s + " r"
		# Right
		(width-1).times do
#			p arr1[current_width][current_height]
	
			if arr1[current_width][current_height] == 1
				top_most = current_height if (top_most.nil? || current_height < top_most)
				bottom_most = current_height if (bottom_most.nil? || current_height > bottom_most)
				right_most = current_width if (right_most.nil? || current_width > right_most)
				left_most = current_width if (left_most.nil? || current_width < left_most)
			end
			current_width += 1
		end

		# Down
		(height-1).times do
#			p arr1[current_width][current_height]
			if arr1[current_width][current_height] == 1
				top_most = current_height if (top_most.nil? || current_height < top_most)
				bottom_most = current_height if (bottom_most.nil? || current_height > bottom_most)
				right_most = current_width if (right_most.nil? || current_width > right_most)
				left_most = current_width if (left_most.nil? || current_width < left_most)
			end
			current_height += 1
		end

		# Left
		if height > 1
			(width-1).times do 
#				p arr1[current_width][current_height]
				if arr1[current_width][current_height] == 1
					top_most = current_height if (top_most.nil? || current_height < top_most)
					bottom_most = current_height if (bottom_most.nil? || current_height > bottom_most)
					right_most = current_width if (right_most.nil? || current_width > right_most)
					left_most = current_width if (left_most.nil? || current_width < left_most)
				end
				current_width -= 1 
			end
		end

		# Up
		if width > 1
			(height-2).times do
#				p arr1[current_width][current_height]
				if arr1[current_width][current_height] == 1
					top_most = current_height if (top_most.nil? || current_height < top_most)
					bottom_most = current_height if (bottom_most.nil? || current_height > bottom_most)
					right_most = current_width if (right_most.nil? || current_width > right_most)
					left_most = current_width if (left_most.nil? || current_width < left_most)
				end
				current_height -= 1
			end
		end

		inward_spiral(height-2, width-2, current_width + 1, current_height, top_most, bottom_most, right_most, left_most, arr1)
	end

=begin
	def checker(w,h)
		top_most = h if (top_most.nil? || h > top_most)
		bottom_most = h if (top_most.nil? || h < bottom_most)
		right_most = w if (right_most.nil? || w > right_most)
		left_most = w if (left_most.nil? || w < left_most)
	end
=end
	

arr2 = [ [["UL1:1",0],[0,1    ],[0,2       ],[0,3    ],[0,4    ],[0,5    ],[0,6    ],[0,7    ],[0,8    ],["UR1:2",9]], 
 		[[1,0     ],["UL2:5",1],[1,2       ],[1,3    ],[1,4    ],[1,5    ],[1,6    ],[1,7    ],["UR2:6",8],[1,9    ]],
		[[2,0     ],[2,1      ],["UL3:9",2 ],[2,3    ],[2,4    ],[2,5    ],[2,6    ],["UR3:10",7],[2,8    ],[2,9    ]],
		[[3,0     ],[3,1      ],[3,2       ],["UL4:13",3],[3,4    ],[3,5    ],["UR4:14",6],[3,7    ],[3,8    ],[3,9    ]],
 		[[4,0     ],[4,1      ],[4,2       ],[4,3    ],["UL5:17",4],["UR5:18",5],[4,6    ],[4,7    ],[4,8    ],[4,9    ]],
 		[[5,0     ],[5,1      ],[5,2       ],[5,3    ],["DL5:20",4],[5,"DR5:19"],[5,6    ],[5,7    ],[5,8    ],[5,9    ]],
 		[[6,0     ],[6,1      ],[6,2       ],["DL4:16",3],[6,4    ],[6,5    ],[6,"DR4:15"],[6,7    ],[6,8    ],[6,9    ]],
 		[[7,0     ],[7,1      ],["DL3:12",2],[7,3    ],[7,4    ],[7,5    ],[7,6    ],[7,"DR3:11"],[7,8    ],[7,9    ]],
 		[[8,0     ],["DL2:8",1],[8,2       ],[8,3    ],[8,4    ],[8,5    ],[8,6    ],[8,7    ],[8,"DR2:7"],[8,9    ]],
 		[["DL1:4",0],[9,1     ],[9,2       ],[9,3    ],[9,4    ],[9,5    ],[9,6    ],[9,7    ],[9,8    ],[9,"DR1:3"]]]

sample = 
[[0,0,0,0,0,0,0,0,0,0], # 
 [0,0,1,1,1,0,0,0,0,0], # 10, no more searching for top 
 [0,0,1,1,1,1,1,0,0,0], # 3 left; 4 right; bott
 [0,0,1,0,0,0,1,0,0,0], # 2 left; 4 right; bott1
 [0,0,1,1,1,1,1,0,0,0], # 2 left; 4 right; bott2
 [0,0,0,0,1,0,1,0,0,0], # 2 left; 4 right; bott3
 [0,0,0,0,1,0,1,0,0,0], # 2 left; 4 right; bott4
 [0,0,0,0,1,1,1,0,0,0], # 2 left; 4 right; bott5
 [0,0,0,0,0,0,0,0,0,0], # 2 left; 8
 [0,0,0,0,0,0,0,0,0,0]] # 0

#inward_spiral(arr2.length,arr2.length,0,0,nil, nil, nil, nil, arr2)

inward_spiral(sample.length,sample.length,0,0,nil, nil, nil, nil, sample)
