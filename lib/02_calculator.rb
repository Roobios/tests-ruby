def add(a, b)
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum(array)
    sum = 0
    array.each{|element| sum += element}
    return sum
end


def multiply(a, b)
    return a * b    
end

def power(a, b)
    return a ** b
end

def factorial(num)
    if num > 0
        (num - 1).times do |step|
            num *= (step + 1)
        end
        return num
    end
    return 1
end


=begin
def factorial(n)
    n == 0 ? 1 : n * fact(n - 1)
end
=end 

