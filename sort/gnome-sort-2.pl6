sub gnome-sort(@data) {

    sub f($i) {
        return 1 unless $i;

        if @data[$i] >= @data[$i - 1] {
            return $i + 1;
        }
        else {
            @data[$i, $i - 1] .= reverse;
            return $i - 1;
        }
    }

    for 1, -> $i {f($i)} ... @data.elems {
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
gnome-sort @data;
say @data;
