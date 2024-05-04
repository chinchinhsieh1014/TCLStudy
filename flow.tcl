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

# -------  for -------
puts { ------- for ------- }
# for {initialization} {condition} {next} {
    # Code block to execute in each iteration
# }
for {set i 0; puts "Start $i"} {$i<2} {incr i; puts "after incr: $i"} {
    puts "loop"
}
