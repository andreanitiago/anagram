1) An anagram is a type of word play, the result of rearranging the letters of a
word or phrase to produce a new word or phrase, using all the original letters exactly once; for example Doctor Who can be rearranged into
Torchwood. Any word or phrase that exactly reproduces the letters in another order is an anagram.
I wrote a small application in Ruby, which reads a file containing an input dictionary and determines which words within that file are actual anagrams.
The file contains a list of words, for example:
Laid
Better
Dial
Times
Brain
Items

You have to read this file and check which set of words are anagrams.
Based on the previous list, the output should be:
Times, Items
Dial, Laid

2) An ananagram is a word or phrase that has no anagrams, this is, no other
word or phrase can be generated as a result of rearranging the letters of it, using all the original letters exactly once; for example Sun can not be rearranged into another word.
I wrote a small application in Ruby, which reads a file containing an input dictionary and determines which words within that file are ananagrams (or have no anagrams).
The file contains a list of words, for example:
Laid
Sun
Times
Items
Based on the previous list, the output should be:
Sun
Laid

Execute that experiment by ./anagram.rb "wl.txt" "anagram" > output.txt or ./anagram.rb "wl.txt" "ananagram" > output.txt
