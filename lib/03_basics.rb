def who_is_bigger(a, b, c)
    
    array = [a, b, c]
    if !array.include?(nil)
        max = array.max{|a,b| a <=> b}
        case array.index(max)
        when 0 then "a is bigger"
        when 1 then "b is bigger"
        when 2 then "c is bigger"
        end
    else
        return "nil detected"
    end
        
end

def reverse_upcase_noLTA(string)
    return string.downcase.delete("lta").upcase.reverse 
end

def array_42(array)
    if array.include?(42)
        true
    else
        false
    end 
end

def magic_array(array)
    array.flatten.map{|x| x *= 2}.delete_if{|x| x % 3 == 0}.uniq.sort
end

#.sort{|a| a*2}.delete_if{|a| a%3== 0}.uniq.sort

=begin
a = [:foo, 'bar', 2]
a1 = a.map {|element| element.class }
a1 # => [Symbol, String, Integer]
=end