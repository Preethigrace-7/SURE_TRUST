set lst {1 2 r j 9}
set lt [split "1.3.r.j.v"]
set ls [ list "v" "3" "9"]

puts $lst
puts $lt
puts $ls
#list command
puts "------llength---"
set a [llength $lst]
puts $a

puts "---lindex----"
set b [lindex $ls 2]
puts $b

puts "--concat----"
set c [concat $lst $ls]
puts $c

puts "--insert---"
set i [linsert $lst 5 "10"]
puts $i

puts "---replace----"
set r [lreplace $lst 5 5 "0"]
puts $r

puts "----replace more than 1--"
set rr [lreplace $lst 3 5 "0" "2" "g"]
puts $rr

puts "---lappend--"
set ap [lappend lst $ls]
puts $ap
puts $lst

puts "---lsort"
set lst1 {9 -3 d g 2 k }
set s [lsort $lst1]
puts $s
set lst2 {2 -3 0 -3 8}
puts [lsort -integer $lst2]
