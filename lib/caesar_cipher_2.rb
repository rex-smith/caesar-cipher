def caesar_cipher(string, shift, result = '')
  string.split('').each do |letter|
    # Make sure the uppercase and lowercase letters are treated differently
    base = letter.ord < 91 ? 65 : 97
    # Only do the shift for letters, not spaces or punctuation
    if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
      shifted_ord = (((letter.ord - base) + shift) % 26) + base
      p shifted_ord
      result += shifted_ord.chr
    else
      result += letter
    end
  end
  result
end

puts caesar_cipher('hello there Gandalf!', -20)
