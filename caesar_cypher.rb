def caesar_cipher(str, sh)
    arr = str.split(//) # splitting string for every letter
    arr1 = [] # array
    arr.each do |letter|
        if letter.ord.between?(65,90)
            letter = (((letter.ord - 65 + sh) % 26) + 65).chr
         elsif letter.ord.between?(97,122)
            letter = (((letter.ord - 97 + sh) % 26) + 97).chr
        end
        arr1 << letter
    end
    return  arr1.join
end

puts caesar_cipher("What a string!",5)
