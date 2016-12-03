# An anagram is a type of word play, the result of rearranging the letters of a word or phrase to
# produce a new word or phrase, using all the original letters exactly once; for example,
# orchestra can be rearranged into carthorse.
# Implement a function def anagrams(word, possible_anagrams) that receives 2 parameters:
# a string(word) and an array of strings(possible_anagrams); and returns an array with all the anagrams for that word.

# ● For example: Given 'horse' and ['heros', 'horse', 'shore', 'standard'] as arguments,
# the output should be: ['heros', 'horse', 'shore']

def anagrams(word, possible_anagrams)
  possible_anagrams.each_with_object([]) do |anagram, arr|
    arr.push(anagram) if (word.downcase.split(//).sort == anagram.downcase.split(//).sort)
  end
end

