#write your code here
def add(number, number2)
  number + number2
end

def subtract(number, number2)
  number - number2
end

def sum(array_to_add)
  sum = 0
  array_to_add.each do |i|
    sum = sum + i
  end

  sum
end

def multiply(number, number2)
  number * number2
end

def power(number, number2)
number**number2
end