# frozen_string_literal: true

class CaeserCipher
  def encrypt(input, encryption_key)
    result = ''
    input.each_char do |char|
      base = char.ord < 91? 65 : 97 # to wrap from z to a
      if(char.ord.between?(65,90) || char.ord.between?(97,122))
        rotation = ((char.ord - base + encryption_key) % 26) + base
        result += rotation.chr
      else
        result += char
      end
    end
    result
  end


  puts CaeserCipher.new().encrypt("Ruby Practice", 40)
end