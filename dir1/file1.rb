=begin
  

  

======== This is file 1 =========
this is line 1
this is line 2 
this is line 3
this is line 4
this is line 5
this is line 5.5
this is line 6


=end

def main
  puts "welcome! This is for debugging test"
  foo("Joe Doe")
  puts bar(10, 2)
end

def foo(name)
  puts "from foo " + name
end

def bar(num1, num2)
  minus = num1 - num2
  plus  = num1 + num2
  mult  = num1 * num2
  div   = num1 / num2 if num2 != 0
  result = minus + plus + mult + div
end

main