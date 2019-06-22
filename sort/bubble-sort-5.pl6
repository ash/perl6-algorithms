sub bubble-sort(@data) {
    for ^@data X 1 ..^ @data {
        my $n = $_[1];
        @data[$n - 1, $n] .= reverse if [>] @data[$n - 1, $n];
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
bubble-sort @data;
say @data;
