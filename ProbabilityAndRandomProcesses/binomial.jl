module BinomialEquation
# Creating user function
    function BinomialDistributionUserFunction(n, p, x)
        q = 1 - p

        return (factorial(n) / (factorial(n - x) * factorial(x))) * 
        p^x * q^(n - x)
    end
end