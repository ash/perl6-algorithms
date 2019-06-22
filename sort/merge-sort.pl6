sub merge-sort(@data) {
    return @data if @data.elems <= 1;

    sub merge(@l, @r) {
        my @a;

        while (@l and @r) {
            my $v;
            if @l[0] < @r[0] {
                $v = @l.shift;
            }
            else {
                $v = @r.shift;
            }
            @a.push($v);
        }
        @a.push(|@l, |@r);
        
        return @a;
    }

    my $mid = @data.elems div 2;
    my @l = @data[^$mid];
    my @r = @data[$mid .. *-1];

    @l = merge-sort(@l);
    @r = merge-sort(@r);

    my @a = merge(@l, @r);
    return @a;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = merge-sort @data;
say @data;
