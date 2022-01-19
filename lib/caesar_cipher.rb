def caesar_cipher(string, shift)
  character_array = string.split('')
  alphabet = ('a'..'z').to_a

  # Making sure to have an array that tells me what letters were capitalized
  case_array = character_array.map do |character|
    character == character.downcase
  end

  # Turning the character array into an array of numbers
  index_array = character_array.map do |character|
    alphabet.index(character)
  end
  p index_array

  # Shifting the index by the constant
  shifted_index = index_array.map do |index|
    (index + shift) % 26
  end
  p shifted_index

  # Turning the shifted number index back to letters
  shifted_characters = shifted_index.map do |index|
    alphabet[index]
  end
  p shifted_characters

  # Making letters upcase that were originally capitalized
  final_array = []
  shifted_characters.each do |i|
    if case_array[i] == false
      final_array.push(shifted_characters[i].upcase)
    else
      final_array.push(shifted_characters[i])
    end
  end
  p final_array

  # Returning the new string
  final_array.join('')
end

puts caesar_cipher('hello world', 5)
