sub insertion-sort(@data) {
    for ^@data -> $i {
        for ^$i -> $j {
            @data.splice($j, 0, @data.splice($i, 1)) if @data[$i] < @data[$j];
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
insertion-sort @data;
say @data;