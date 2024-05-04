# create a list
set myList "apple banana cherry"
puts $myList
puts [lindex $myList 2]

set myList [list apple banana cherry]
puts $myList
set anotherList [list "multi word item" "another item" item3]
puts $anotherList

set myList [split 7/4/1776 "/"]
puts $myList

# iterate a list
foreach item $myList {
    puts $item
}

# add item s to a list 
set myFruits "apple banana orange"
# lappend
lappend myFruits cherry
puts $myFruits

# concat
set myFruits [concat $myFruits [list grape]]
puts $myFruits

# insert an item to a list
set myFruits [linsert $myFruits 1 pie]
puts $myFruits

# modify a list
lset myFruits 0 strawberry
puts $myFruits

# remove the element
set myFruits [lreplace myFruits 0 0]
puts $myFruits

# Unset the whole list
unset myFruits

set myFruits "apple banana orange"
# lsearch
# lsearch -option list pattern
set index [lsearch $myFruits banana]
puts $index
# lsort
# lsort -option list
set sortedList [lsort $myFruits]
puts $sortedList
# lrange
# lrange list first last
set myList [list apple banana cherry grape orange]
set subList [lrange $myList 1 3] 
puts $subList

# glob
# used for pattern matching, especially for filename
# returns a list of file names that match a specified pattern.
# glob -option pattern
# set files [glob *.txt]
