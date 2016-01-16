# return the result of n % 16
def solution(n)
#  exit(0) unless n.is_a?(Fixnum)
#  n.to_s(2)[-4..-1].to_i(2)
#	cl = n.class.superclass
#	n.each_byte { |elmt| p elmt }
#	String.try_convert(n)
#	n.bit_length
p	n % 16
	arr = []
	arr << n[3]
	arr << n[2]
	arr << n[1]
	arr << n[0]
p	arr.join
	
# return the result of n % 16
def solution(n)
	val = 0.0
	val += 1.0 unless n[0].zero?
	val += 2.0 unless n[1].zero?
	val += 4.0 unless n[2].zero?
	val += 8.0 unless n[3].zero?
  val
	
end

p solution(1), "\n\n"
p solution(2)
p solution(3)
p solution(4)
p solution(5)
p solution(6)
p solution(7)
p solution(8)
p solution(9)
p solution(10)
p solution(11)
p solution(12)
