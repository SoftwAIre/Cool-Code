############################################################
# not bad
def multiplication_table(row,col)
  arr = [] # create array to host values
  1.upto(row) do |i| # how many rows / arrays are we making?
    arr << (1..col).to_a.map! {|val| val * i} # create range from 1 to col, to array, map values vs i to create mult table
  end
  arr # return mult table
end
