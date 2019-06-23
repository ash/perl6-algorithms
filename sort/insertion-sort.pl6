sub insertion-sort(@data) {
    for ^@data -> $i {
        for ^$i -> $j {
            if @data[$i] < @data[$j] {
                @data.splice($j, 0, @data[$i]);
                @data.splice($i + 1, 1);
            }
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
insertion-sort @data;
say @data;