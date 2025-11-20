module FreqTools

################################################################################
##
## Dependencies
##
################################################################################

using DataFrames, NamedArrays, Distributions,
    Printf, CategoricalArrays, PrettyTables, Reexport, Statistics, HypothesisTests,
    StatsAPI

@reexport using FreqTables

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