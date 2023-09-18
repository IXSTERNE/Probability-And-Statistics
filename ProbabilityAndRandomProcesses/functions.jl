module BinomialFunctions

using Distributions

    function PdfWithSingleRandomVariable(numberOfTrials, prob, x)
        
        probability = Binomial(numberOfTrials, prob)
        pmf = pdf(probability, x)
        return pmf
    end

    function PdfWithRange(numberOfTrials, prob, range)

        array1 = []
        probability = Binomial(numberOfTrials, prob)
        for x in range
            pmf = pdf(probability, x)
            push!(array1, pmf)
        end
        return array1
    end
end
