sub quick-sort(@data) {    
    return @data if @data.elems <= 1;

    my $pivot = @data[0];

    my @left;
    my @right;

    for @data[1..*] -> $x {
        if $x < $pivot {
            push @left, $x;
        }
        else {
            push @right, $x;
        }
    }

    return flat(quick-sort(@left), $pivot, quick-sort(@right));
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = quick-sort @data;
say @data;
