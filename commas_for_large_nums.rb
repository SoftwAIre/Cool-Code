def solution(n)
  str = ""
  while n >= 1000
    3.times do
      str = (n % 10).to_s + str
      n = n / 10
    end
    str = "," + str
  end
  str = n.to_s + str
end

p solution(50000)
