def who_is_bigger(a, b, c)
    
    array = [a, b, c]
    if !array.include?(nil)
        max = array.max{|a,b| a <=> b}
        case array.index(max)
        when 0 then return "a is bigger"
        when 1 then return "b is bigger"
        when 2 then return "c is bigger"
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
        return true
    else
        return false
    end 
end

def magic_array(array)
    return array.flatten.sort{|a| a*2}.map

end

puts magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])
# Attendu : [2, 4, 8, 10, 46, 62]

#.sort{|a| a*2}.delete_if{|a| a%3== 0}.uniq.sort

=begin
a = [:foo, 'bar', 2]
a1 = a.map {|element| element.class }
a1 # => [Symbol, String, Integer]
=end