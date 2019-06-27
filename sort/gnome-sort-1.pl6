sub gnome-sort(@data) {
    my $pos = 0;

    while $pos != @data.elems - 1 {
        if !$pos or @data[$pos] >= @data[$pos - 1] {
            $pos++;
        }
        else {
            @data[$pos, $pos - 1] .= reverse;
            $pos--;
        }
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
gnome-sort @data;
say @data;
