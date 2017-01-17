def fizzbuzz(a, b)
  r = []
  while a <= b
    if a % 3 == 0 and a % 5 == 0
      r.push("FizzBuzz")
    elsif a % 3 == 0
      r.push("Fizz")
    elsif a % 5 == 0
      r.push("Buzz")
    else
      r.push(a)
    end
    a += 1
  end
  r
end

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]