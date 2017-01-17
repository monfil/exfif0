def array_index(a,f)
  b = []
  c = 1
  while c <= f do
    b.push(c)
    c += 1
  end
  a.product(b)
end

#test
p array_index(["c", "b", "a"], 2) == [["c", 1], ["c", 2], ["b", 1], ["b", 2], ["a", 1], ["a", 2]]
p array_index(["a"], 3) == [["a", 1], ["a", 2], ["a", 3]]