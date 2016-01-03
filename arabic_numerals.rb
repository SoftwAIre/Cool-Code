# I	 V	X	  L	  C	  D  	M
# 1	 5	10	50	100	500	1000

str = "MMMMCMXCIX"
val = 0
idx = 0

roman_numerals = { "I"  => 1, 
                   "IV" => 4,
                   "V"  => 5,
                   "IX" => 9,
                   "X"  => 10,
                   "XL" => 40,
                   "L"  => 50,
                   "XC" => 90,
                   "C"  => 100,
                   "CD" => 400,
                   "D"  => 500,
                   "CM" => 900,
                   "M"  => 1000 }

while (idx <= str.length - 1)
  if (roman_numerals[str[idx,2].to_s] != nil) && (roman_numerals[str[idx+1].to_s] != nil) &&(roman_numerals[str[idx,2].to_s] > 0)
    val += roman_numerals[str[idx,2]]
    idx += 1
  else
    val += roman_numerals[str[idx]]
  end
  idx += 1
end

puts val
