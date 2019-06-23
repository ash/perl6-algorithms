sub insertion-sort(@data) {
    @data.splice(
        @data.first(* >= @data[$_], :k), 
        0,
        @data.splice($_, 1)
    ) for ^@data;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
insertion-sort @data;
say @data;
