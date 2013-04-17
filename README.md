Eclipse Hexes Analysis
======================

Here is a collection of files for comparing the different kinds of hexes in Eclipse (the board game). The raw data is in eclipse-hexes.csv. There are also commands to generate a Postgres database, populate it from the CSV file, and run a report against it.

## Results

Some interesting facts comparing the three rings are below.

The values for `{economy,labs,mines}_perc` are the chances you have of getting a planet with a population slot of the respective type, including white (wild) planets. The values for `adv_{economy,labs,mines}_perc` are the same, but also include advanced slots. In other words, if you have Advanced Mining, you have a 72% chance of finding a mineable planet in a Ring III hex.

    -[ RECORD 1 ]----+-------------------
    ring             | 1
    hexes            | 8
    avg_points       | 2.2500000000000000
    economy_perc     | 0.75
    labs_perc        | 0.75
    mines_perc       | 0.5
    adv_economy_perc | 0.75
    adv_labs_perc    | 0.875
    adv_mines_perc   | 0.75
    ancients_perc    | 0.5
    discovery_perc   | 0.5
    artifacts_perc   | 0.25
    -[ RECORD 2 ]----+-------------------
    ring             | 2
    hexes            | 11
    avg_points       | 1.1818181818181818
    economy_perc     | 0.454545454545455
    labs_perc        | 0.545454545454545
    mines_perc       | 0.454545454545455
    adv_economy_perc | 0.545454545454545
    adv_labs_perc    | 0.636363636363636
    adv_mines_perc   | 0.454545454545455
    ancients_perc    | 0.272727272727273
    discovery_perc   | 0.454545454545455
    artifacts_perc   | 0.181818181818182
    -[ RECORD 3 ]----+-------------------
    ring             | 3
    hexes            | 18
    avg_points       | 1.1666666666666667
    economy_perc     | 0.5
    labs_perc        | 0.444444444444444
    mines_perc       | 0.611111111111111
    adv_economy_perc | 0.611111111111111
    adv_labs_perc    | 0.555555555555556
    adv_mines_perc   | 0.722222222222222
    ancients_perc    | 0.222222222222222
    discovery_perc   | 0.555555555555556
    artifacts_perc   | 0.166666666666667

## TODO

* Add hexes for the Galactic Center and the starting player locations.
* Add hexes for expansions.


