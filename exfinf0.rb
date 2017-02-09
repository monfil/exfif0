def vowels(words)
  words.each {|w| w.delete! "aeiou"}
end

p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

def get_sum(n1, n2)
  
end