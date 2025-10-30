module TableTools

################################################################################
##
## Dependencies
##
################################################################################

using DataFrames, Stella, FreqTables, NamedArrays, FreqTables,
    Printf, CategoricalArrays, PrettyTables, Reexport, Statistics

##############################################################################
##
## Exported methods and types (in addition to everything reexported above)
##
##############################################################################

export tab

##############################################################################
##
## Load files
##
##############################################################################
include("tab.jl")

end