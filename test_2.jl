using Distributions

struct PdfBinomial

    number_of_trials::Int64
    random_variable::Int64

end

function PdfBinomial(number_of_trials::Int64, random_variable::Int64)
    new(number_of_trials, random_variable)
end

