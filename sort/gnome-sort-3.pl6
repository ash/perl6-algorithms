sub gnome-sort(@data) {
    my $done = False;
    while !$done {
        $done = True;
        for 1 ..^ @data -> $i {
            my $adjacent := @data[$i - 1, $i];
            if [>] $adjacent {
                $adjacent.=reverse;
                $done = False;
            }
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
gnome-sort @data;
say @data;
