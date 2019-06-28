sub odd-even-sort(@data) {
    my $done = False;
    while !$done {
        $done = True;
        loop (my $i = 0; $i < @data - 1; $i += 2) {
            if [>] @data[$i, $i + 1] {
                $done = False;
                @data[$i, $i + 1].=reverse;
            }
        }
        loop ($i = 1; $i < @data; $i += 2) {
            if [>] @data[$i, $i + 1] {
                $done = False;
                @data[$i, $i + 1].=reverse;
            }
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
odd-even-sort @data;
say @data;