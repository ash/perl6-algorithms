sub odd-even-sort(@data) {
    while ![<=] @data {
        @data[$_, $_ + 1].=reverse if [>] @data[$_, $_ + 1]
            for flat((0, 2 ... @data - 2), (1, 3 ... @data - 2));
    }
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
odd-even-sort @data;
say @data;
