puts "hello world"
puts {hello world}

# ------- assignment -------
puts { ------- assignment ------- }
# set varName value
# puts $varName
set a 1
puts "$a"; # output: 1
puts {$a}; # output: $a

set y [set x 1]
puts $x; # output: 1
puts $y; # output: 1

set a "[set x {hello}]"
puts $a; # output: hello
puts $x; # output: hello

# -------  \ escape -------
puts { ------- \ escape ------- }
# puts "\$varName" # output: $varName
set b "\[{hello}]"
puts $b; # output: [{hello}]

# ------- "" -------
puts { ------- "" ------- }
# for variable substitution and command substitution
set var "hello"
puts "$var world"; # output: hello world

# ------- {} -------
puts { ------- {} ------- }
# for grouping and quoting literals
set var "hello"
puts {$var world}; # output: $var world

set z {["hello"]}
puts $z; # output: ["hello"]

# ------- [] -------
puts { ------- [] ------- }
# command substitution
set var "hello"
puts [string toupper $var]; # output: HELLO

# -------  math -------
puts { ------- math ------- }
set math1 [expr 5 + 3] ;# Addition
puts $math1
set math2 [expr 5 - 3] ;# Subtraction
puts $math2
set math3 [expr 5 * 3] ;# Multiplication
puts $math3
set math4 [expr 5 / 3] ;# Division
puts $math4
set math5 [expr 5 % 3] ;# Modulus (remainder)
puts $math5

# -------  switch -------
puts { ------- switch ------- }
# switch string pattern1?pattern2?...?patternN?
# switch string {string pattern1?pattern2?...?patternN?}
set fruit "apple"
switch $fruit {
    "apple" { puts "It's an apple." }
    "banana" { puts "It's a banana." }
    "orange" { puts "It's an orange." }
    default { puts "Unknown fruit." }
}

# -------  if -------
puts { ------- if ------- }
set x 10

if {$x > 10} {
    puts "$x is greater than 10"
} elseif {$x < 10} {
    puts "$x is less than 10"
} else {
    puts "$x is equal to 10"
}

# -------  while -------
puts { ------- while ------- }
set i 0

while {$i < 5} {
    puts "Iteration: $i"
    set i [expr $i+1]
}
