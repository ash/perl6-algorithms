sub selection-sort(@data) {
    my @a;

    while @data {
        my $min_n = 0;
        $min_n = $_ if @data[$_] < @data[$min_n] for ^@data;

        @a.push(|@data.splice($min_n, 1));
    }

    return @a;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = selection-sort @data;
say @data;
