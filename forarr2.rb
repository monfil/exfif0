def array_index(a,f)
  b = []
  c = 1
  d = []
  while c <= f do
    b.push(c)
    c += 1
  end
  a.each do |e|
   d.push([e, b])
  end
  d
end

p array_index(["c", "b", "a"], 2) == [["c", [1, 2]], ["b", [1, 2]], ["a", [1, 2]]]
p array_index(["a"], 3) == [["a", [1, 2, 3]]]