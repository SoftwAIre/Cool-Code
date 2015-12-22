def x(n)
  i = 0
  arr = []
  while i < n
    arr.push(Array.new(n, 0))
    arr[i][-i - 1] = 1
    arr[i][i] = 1
    i += 1
  end
  arr
end

x(7)
