sub stooge-sort(@data) {
    return if [<=] @data;

    @data[0, *-1].=reverse if [>] @data[0, *-1];
    
    my $l = @data[0 ..^ Int(2/3 * ^@data)];
    my $r = @data[Int(1/3 * ^@data) .. *-1];

    stooge-sort($l);
    stooge-sort($r);
    stooge-sort($l);
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
stooge-sort @data;
say @data;
