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


    # If p > randomNumber; The event has occured
    function RandomSimulation(p, n)
        array = rand(n)
        countTrueEvent = 0
        for randomNumber in array
            if p > randomNumber
                countTrueEvent = countTrueEvent + 1
            end
        end
        return countTrueEvent / n
    end

end
