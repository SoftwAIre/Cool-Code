def difference_of_squares(x)
  sum1, sum2 = 0, 0
  1.upto(x) {|val| sum1 = sum1 + val ** 2}
  1.upto(x) {|val| sum2 = sum2 + (val) }
  (sum2 ** 2) - sum1
end

########################################################
# ColbyDauph did an awesome job. 
def difference_of_squares(x)
  r = 1..x
  r.inject(:+) ** 2 - r.map{|x| x ** 2 }.inject(:+)
end
