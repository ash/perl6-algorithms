sub merge-sort(@data) {
    return @data if @data.elems <= 1;

    my $mid = @data.elems div 2;

    my @l = merge-sort(@data[^$mid]);
    my @r = merge-sort(@data[$mid .. *-1]);

    return flat(gather {
        take(@l[0] < @r[0] ?? @l.shift !! @r.shift) while @l and @r;
        take(@l, @r);
    });
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = merge-sort @data;
say @data;
