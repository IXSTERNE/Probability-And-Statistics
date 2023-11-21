using Distributions

struct PdfBinomial
# Honestly, think we can inherit functions?

    #Specified types
    number_of_trials::Int64
    random_variable::Float64

    function PdfBinomial(number_of_trials::Int64, random_variable::Float64)
        new(number_of_trials, random_variable)
    end

    PdfWithSingleRandomVariable = function(self::PdfBinomial)
        _probability = Binomial(self.number_of_trials, self.random_variable)
        pmf = pdf(_probability, self.random_variable)
        return pmf
    end

    PdfWithRange = function(self::PdfBinomial, range)
        array1 = Float64[]
        _probability = Binomial(self.number_of_trials, self.random_variable)
        for random_variable in range
            pmf = pdf(_probability, random_variable)
            push!(array1, pmf)
        end
        return array1
    end
end

pdf_binomial = PdfBinomial(10, 0.5)

result_single = pdf_binomial.PdfWithSingleRandomVariable(pdf_binomial)
println(result_single)
