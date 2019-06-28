sub gnome-sort(@data) {

    sub f($i) {
        return 1 unless $i;

        return $i + 1 if [>=] @data[$i, $i - 1];
        
        @data[$i, $i - 1] .= reverse;

        return $i - 1;
    }

    1, -> $i {f($i)} ... @data.elems;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
gnome-sort @data;
say @data;
