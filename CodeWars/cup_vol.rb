def cup_volume(d1, d2, h)
#  volume of cup = (1/3 * Math.pi * r1**2 * h) - (1/3 * Math.pi * r2**2 * h)
  arr = [d1,d2]
  
  c = (d1 > d2) ? 0 : 1
  
  r1 = arr[c] * 0.5
  r2 = arr[(c + 1) % 2] * 0.5

  total_vol = (r1**2) * Math::PI * h / 3.0
#  small_cone = (r2**2) * Math::PI * ((h * r2) / (r1.to_f)) / 3.0
  
#  h/r1 = h2/r2
#  h*r2/r1.to_f = h2
  
#  total_vol - small_cone
end
