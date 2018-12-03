module Herring

using ForneyLab
import ForneyLab: outboundType, isApplicable, generateId, unsafeMean, unsafeVar, @ensureVariables, addNode!, associate!, slug, format, FactorNode, SoftFactor, Interface

# Factor node
include("factor_nodes/poisson.jl")

# Update rules
include("update_rules/poisson.jl")

# Julia update implementation
include("engines/julia/update_rules/poisson.jl")

end # module