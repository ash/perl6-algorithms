sub bubble-sort(@data) {
    my Bool $done = False;
    while !$done {
        $done = True;
        for 1 .. @data.elems - 1 -> $n {
            if @data[$n - 1] > @data[$n] {
                (@data[$n - 1], @data[$n]) = (@data[$n], @data[$n - 1]);
                $done = False;
            }
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
bubble-sort @data;
say @data;
