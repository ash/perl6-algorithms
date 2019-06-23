sub quick-sort(@data) {
say @data;
    return if @data.elems <= 1;

    sub partition(@data) {
        my $pivot = @data[*-1];
        
        my $i = 0;
        for ^ @data.elems -> $j {
            next if @data[$j] > $pivot;

            @data[$i, $j] = @data[$j, $i];
            $i++;
        }
        @data[$i], @data[*-1] = @data[*-1], @data[$i];

        return $i - 1;
    }

    my $p = partition(@data);

    my $l = @data[0, $p];
    my $r = @data[$p + 1, *-1];
    quick-sort($l);
    quick-sort($r);
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
quick-sort @data;
say @data;
