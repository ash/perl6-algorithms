sub gnome-sort(@data) {
    my $done = False;
    while !$done {
        $done = True;
        $done = False, @data[$_ - 1, $_].=reverse if [>] @data[$_ - 1, $_] for 1 ..^ @data;
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
gnome-sort @data;
say @data;
