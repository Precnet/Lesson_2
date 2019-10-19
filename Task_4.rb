# Create hash with vowels as keys and their number in alphabet as values

VOWELS = %w(a e i o u y)

def create_alphabet
  ('a'..'z').to_a
end

def get_vowels(alphabet = create_alphabet)
  result = {}
  VOWELS.each { |vowel| result[vowel] = alphabet.find_index(vowel) + 1 }
  result
end

print get_vowels
