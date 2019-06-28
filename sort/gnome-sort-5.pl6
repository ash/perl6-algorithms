sub gnome-sort(@data) {

    proto sub f($) { * } 

    multi sub f(0) { 1 }

    multi sub f($i where [>=] @data[$i, $i - 1]) { $i + 1 }

    multi sub f($i) {
        @data[$i, $i - 1] .= reverse;

        return $i - 1;
    }

    1, &f ... @data.elems;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
gnome-sort @data;
say @data;
