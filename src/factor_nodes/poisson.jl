export Poisson

"""
Description:
    Poisson factor node

    Real scalars
    l > 0 (rate)

    f(out, l) = Poisson(out|l) = 1/(x!) * l^x * exp(-l)

Interfaces:
    1. out
    2. l

Construction:
    Poisson(id=:some_id)
"""
mutable struct Poisson <: FactorNode
    id::Symbol
    interfaces::Vector{Interface}
    i::Dict{Symbol,Interface}

    function Poisson(out, l)
        self = new()

        return self
    end
end

ForneyLab.slug(::Type{Poisson}) = ""

ForneyLab.format(dist::ProbabilityDistribution{Univariate, Poisson}) = ""

ForneyLab.ProbabilityDistribution(::Type{Univariate}, ::Type{Poisson}; l=1.0) = ProbabilityDistribution()
ForneyLab.ProbabilityDistribution(::Type{Poisson}; l=1.0) = ProbabilityDistribution()

ForneyLab.dims(dist::ProbabilityDistribution{Univariate, Poisson}) = 0

ForneyLab.vague(::Type{Poisson}) = ProbabilityDistribution()

ForneyLab.isProper(dist::ProbabilityDistribution{Univariate, Poisson}) = false

ForneyLab.unsafeMean(dist::ProbabilityDistribution{Univariate, Poisson}) = 0.0

ForneyLab.unsafeVar(dist::ProbabilityDistribution{Univariate, Poisson}) = 0.0

# TODO: skip the implementation of entropy and average energy for now, they require additional work

# Entropy functional
# function ForneyLab.differentialEntropy(dist::ProbabilityDistribution{Univariate, Poisson})
    # ...
# end

# Average energy functional
# function ForneyLab.averageEnergy(::Type{Poisson}, marg_out::ProbabilityDistribution{Univariate}, marg_l::ProbabilityDistribution{Univariate})
#     ...
# end