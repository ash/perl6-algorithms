multi sub quick-sort([]) {
    return [];
}

multi sub quick-sort([$pivot, *@data]) {
    my %part = @data.classify(* < $pivot);

    return flat(quick-sort(%part{True} // []), $pivot, quick-sort(%part{False} // []));
}

my @data = 4, 5, 7, 1, 46, 78, 2, 2, 1, 9, 10;
@data = quick-sort @data;
say @data;
