def solution(dig)
  dig = dig.to_s
  num = nil
  
  0.upto(dig.length-5) {|i| num = dig[i,5].to_i if num.nil? || num < dig[i,5].to_i }
  num
end

#solution(1000000099789)
