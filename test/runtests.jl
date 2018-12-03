module HerringTests

using Test

@testset "Herring" begin
	include("factor_nodes/test_poisson.jl")
end

end # module