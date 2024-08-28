puts "Hello Compiler"
set var1 55.3
set var2 TCLscriptin   #assigning values
set var3 100

puts "variable 1 is $var1"  #prints
puts "variable 1 is $var2"
puts "variable 1 is $var3"

puts "$var3"  #drives the value of the variable
puts {var3}    #printing whatever is inside

set var4 [ expr $var3 + $var1]
puts "$var4"
