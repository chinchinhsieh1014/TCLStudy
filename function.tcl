# proc name args body
proc sum {arg1 arg2} {
    return [expr $arg1 + $arg2]
}

puts "[sum 2 3]"

# add default and args 
proc example {first {second ""} args} {
    if {$second == ""} {
        puts "There is only one argument and it is $first"
        return 1
    } else {
        if {$args == ""} {
            puts "There are two arguments - $first and $second"
            return 2
        } else {
            puts "There are three arguments - $first, $second, $args"
            return 3
        }
    }
}

set test1 [example ONE]
puts $test1
set test2 [example ONE TWO]
puts $test2
set test3 [example ONE TWO THREE]
puts $test3
set test4 [example ONE TWO THREE FOUR]
puts $test4

# local varialbes - within a proc
# global variables - outside of a proc

# global - from local to global

# upvar
# upvar #level varName localVarName
# leval 0: current
proc setPositive {variable value} {
    upvar $variable myvar
    if {$value < 0} {
        set myvar [expr -$value]
    } else {
        set myvar $value
    }
    return $myvar
}

setPositive x 5
setPositive y -5

puts "x: $x y: $y"
