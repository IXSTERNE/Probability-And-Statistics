using Distributions

    struct PdfBinomial

        number_of_trials::Int64
        random_variable::Float64

        function PdfWithSingleRandomVariable(number_of_trials, random_variable)
            _probability = Binomial(number_of_trials, random_variable)
            pmf = pdf(_probability, random_variable)
            return pmf
        end

        function PdfWithRange(number_of_trials, random_variable, range)
            # This one is supposed to take additional arguments: range
            # Also creates a new array
            array1 = []
            _probability = Binomial(number_of_trials, random_variable)
            for random_variable in range
                pmf = pdf(_probability, random_variable)
                push!(array1, pmf)
            return array1
        end
    end

    obj1 = PdfBinomial
    obj1.PdfWithSingleRandomVariable(10, 5)
    println(obj1)

    obj2 = PdfBinomial
    obj2.PdfWithRange(10, 5, 20)
    println(obj2)
end
# Keep this in check since this is probably wrong
# Subject to change

# Also if you just look at the old function file. It's starting to look the same
# Upcoming matrix and multidimensional distribution density calculating.