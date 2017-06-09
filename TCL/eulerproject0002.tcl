set older 1
set old 1
set current 0
set sum 0

while {$current <= 4000000} {

    set current [expr $old + $older]
    set older [expr $old]
    set old [expr $current]

    if {[expr $current % 2] == 0} {set sum [expr $sum + $current]}
}

puts $sum