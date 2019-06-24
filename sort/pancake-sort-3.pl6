sub pancake-sort(@data) {
    {
        @data[0 .. @data[0..$_].maxpairs[0].key] .= reverse;
        @data[0 .. $_] .= reverse;
    } for @data.elems - 1 ... 1;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
pancake-sort @data;
say @data;
