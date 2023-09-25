include("ProbabilityAndRandomProcesses/functions.jl")

import .BinomialFunctions:PdfWithSingleRandomVariable

σ = PdfWithSingleRandomVariable(21, 0.98, 21)
print(ceil(Int, 1050 * (1 - σ) + 950 * σ))