sub pancake-sort(@data) {
    my $n = @data.elems - 1;

    while $n > 1 {
        my $m = $n;
        my $max_n = $m;
        my $max = @data[$m];
        while --$m {
            if @data[$m] > $max {
                $max = @data[$m];
                $max_n = $m;
            }
        }

        @data[0..$max_n] .= reverse;
        @data[0..$n] .= reverse;
        
        $n--;
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
pancake-sort @data;
say @data;
