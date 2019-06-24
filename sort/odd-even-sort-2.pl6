sub odd-even-sort(@data) {
    for ^@data {
        loop (my $i = 0; $i < @data - 1; $i += 2) {
            @data[$i, $i + 1].=reverse if [>] @data[$i, $i + 1];
        }
        loop ($i = 1; $i < @data - 1; $i += 2) {
            @data[$i, $i + 1].=reverse if [>] @data[$i, $i + 1];
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
# my @data = 1,2,3,4,5,6;
odd-even-sort @data;
say @data;