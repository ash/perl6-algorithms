sub pancake-sort(@data) {
    my $n = @data.elems - 1;

    while $n > 1 {
        @data[0 .. @data[0..$n].maxpairs[*-1].key] .= reverse;
        @data[0..$n] .= reverse;
        
        $n--;
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
pancake-sort @data;
say @data;
