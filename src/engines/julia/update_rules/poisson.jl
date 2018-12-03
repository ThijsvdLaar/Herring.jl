export
ruleSPPoissonOutVP,
ruleSPPoissonLPV,
ruleVBPoissonOut,
ruleVBPoissonL

ruleSPPoissonOutVP(msg_out::Nothing, msg_l::Message{PointMass, Univariate}) = 
    Message(Univariate, Poisson, l=0.0)

ruleSPPoissonLPV(msg_out::Message{PointMass, Univariate}, msg_l::Nothing) = 
    Message(Univariate, Gamma, a=0.0, b=0.0)

ruleVBPoissonOut(marg_out::Any, marg_l::ProbabilityDistribution{Univariate, Gamma}) = 
    Message(Univariate, Poisson, l=0.0)

ruleVBPoissonL(marg_out::ProbabilityDistribution{Univariate}, marg_l::Any) = 
    Message(Univariate, Gamma, a=0.0, b=0.0)