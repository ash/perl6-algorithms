sub selection-sort(@data) {
    my @a;

    while @data {
        my $min = @data[0];
        my $min_n = 0;
        for ^ @data -> $i {
            if @data[$i] < $min {
                $min = @data[$i];
                $min_n = $i;
            }
        }

        @a.push($min);        
        @data.splice($min_n, 1);
    }

    return @a;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = selection-sort @data;
say @data;
