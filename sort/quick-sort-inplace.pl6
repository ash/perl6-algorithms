sub quick-sort(@data, $start = 0, $end = @data.elems - 1) {
    return if $start >= $end;
    return if @data.elems <= 1;

    sub partition(@data, $start, $end) {
        my $pivot = @data[$end];
        
        my $i = $start;
        for $start ..^ $end -> $j {
            next if @data[$j] > $pivot;

            @data[$i, $j] = @data[$j, $i];
            $i++;
        }
        @data[$i, $end] = @data[$end, $i];

        return $i - 1;
    }

    my $p = partition(@data, $start, $end);

    quick-sort(@data, $start, $p);
    quick-sort(@data, $p + 1, $end);
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
quick-sort @data;
say @data;
