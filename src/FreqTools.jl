module FreqTools

################################################################################
##
## Dependencies
##
################################################################################

using DataFrames, Stella, FreqTables, NamedArrays, 
    Printf, CategoricalArrays, PrettyTables, Reexport, Statistics

##############################################################################
##
## Exported methods and types (in addition to everything reexported above)
##
##############################################################################

export tab, rowpct, colpct, cellpct

##############################################################################
##
## Load files
##
##############################################################################
include("tab.jl")

end