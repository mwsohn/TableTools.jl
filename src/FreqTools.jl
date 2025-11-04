module FreqTools

################################################################################
##
## Dependencies
##
################################################################################

using DataFrames, NamedArrays, Distributions,
    Printf, CategoricalArrays, PrettyTables, Reexport, Statistics

@reexport using FreqTables

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