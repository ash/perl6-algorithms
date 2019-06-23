sub selection-sort(@data) {
    my @a;

    while @data {
        @a.push(0);
        @a[*-1] = $_ if @data[$_] < @data[@a[*-1]] for ^@data;

        @a[*-1] = @data.splice(@a[*-1], 1)[0];
    }

    return @a;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = selection-sort @data;
say @data;
