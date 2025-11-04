module FreqTools

################################################################################
##
## Dependencies
##
################################################################################

using DataFrames, FreqTables, NamedArrays, Distributions,
    Printf, CategoricalArrays, PrettyTables, Reexport, Statistics

##############################################################################
##
## Exported methods and types (in addition to everything reexported above)
##
##############################################################################

export tab, tabi

##############################################################################
##
## Load files
##
##############################################################################
include("tab.jl")

end