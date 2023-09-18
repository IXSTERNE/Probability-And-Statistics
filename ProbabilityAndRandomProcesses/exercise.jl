include("functions.jl")
include("binomial.jl")
import .BinomialFunctions: PdfWithRange, PdfWithSingleRandomVariable
import .BinomialEquation: BinomialDistributionUserFunction

# Example 1.5

println(BinomialDistributionUserFunction(10, 0.25, 5))


# Exercise 1.3
# i
println(sum(PdfWithRange(25, 0.92, 22:25)))

# ii
println(PdfWithSingleRandomVariable(25, 0.92, 22))