sub bubble-sort(@data) {
    @data[$_ - 1, $_] .= reverse
        if [>] @data[$_ - 1, $_]
            for 1 ..^ @data;

    bubble-sort(@data) unless [<=] @data;
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
bubble-sort @data;
say @data;
