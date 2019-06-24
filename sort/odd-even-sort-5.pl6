sub odd-even-sort(@data) {
    my $done = False;
    while !$done {
        $done = True;
        for flat((0, 2 ... @data - 2), (1, 3 ... @data - 2)) -> $i {
            $done--, @data[$i, $i + 1].=reverse if [>] @data[$i, $i + 1];
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
# my @data = 1,2,3,4,5,6;
odd-even-sort @data;
say @data;