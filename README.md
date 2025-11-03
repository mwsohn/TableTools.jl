# TableTools

A package that produces frequency tables and associated summary tables. It mostly is
a wrapper for the excellent `FreqTables.jl` package. There is only one function `tab`
in this package.

## Installation

```
  ] add https://github.com/mwsohn/TableTools.jl
```

## Syntax

tab(::AbstractDataFrame, vars::Union{String,Symbol}...; skipmissing = true, sort = nothing, summarize = nothing)

### Options:

skipmissing - set to `false` to include `missing` values in the frequency table

sort - set it to true to sort the output table by the order of frequency with the largest category on top. It can only be used in the one-way table

summarize - specify a "continuous" variable to produce means, standard deviations, and counts in a one-way or two-way tables

## Example

### 1. One-way frequency table

julia> df = read_stata(download("http://www.stata-press.com/data/r9/auto.dta"))

julia> tab(df, :foreign)
─────────────┬───────────────────────────
     foreign │ Counts   Percent  Cum Pct         
─────────────┼───────────────────────────        
 0: Domestic │     52    70.270   70.270
  1: Foreign │     22    29.730  100.000
─────────────┼───────────────────────────        
       Total │     74   100.000  100.000
─────────────┴───────────────────────────        

julia> tab(df, :foreign, summarize = :price)
─────────────┬────────────────────────
     foreign │  N      Mean     StDev 
─────────────┼────────────────────────
 0: Domestic │ 52  6072.423  3097.104
  1: Foreign │ 22  6384.682  2621.915
─────────────┼────────────────────────
       Total │ 74  6165.257  2949.496
─────────────┴────────────────────────

julia> df.manufacturer = map( x -> split(x)[1], df.make)

julia> tab(df, :manufacturer, sort = true)
──────────────┬───────────────────────────
 manufacturer │ Counts   Percent  Cum Pct 
──────────────┼───────────────────────────
        Buick │      7     9.459    9.459
         Olds │      7     9.459   18.919
        Chev. │      6     8.108   27.027
        Merc. │      6     8.108   35.135
        Pont. │      6     8.108   43.243
        Plym. │      5     6.757   50.000
       Datsun │      4     5.405   55.405
        Dodge │      4     5.405   60.811
           VW │      4     5.405   66.216
          AMC │      3     4.054   70.270
         Cad. │      3     4.054   74.324
        Linc. │      3     4.054   78.378
       Toyota │      3     4.054   82.432
         Audi │      2     2.703   85.135
         Ford │      2     2.703   87.838
        Honda │      2     2.703   90.541
          BMW │      1     1.351   91.892
         Fiat │      1     1.351   93.243
        Mazda │      1     1.351   94.595
      Peugeot │      1     1.351   95.946
      Renault │      1     1.351   97.297
       Subaru │      1     1.351   98.649
        Volvo │      1     1.351  100.000
──────────────┼───────────────────────────
        Total │     74   100.000  100.000
──────────────┴───────────────────────────

### 2. Two-way frequency table

julia> tab(df, :)