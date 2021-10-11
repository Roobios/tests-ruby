def echo(say)
    say
end

def shout(say)
    say.upcase
end

def repeat(string, nb_rep=2)
    ((string + " ") * nb_rep).chomp(" ")
end

def start_of_word(string, nb_let=1)
    string.slice(0..nb_let-1)
end

def first_word(string)
    string.split.first
end

def titleize(string)
    new_result = []
    result = string.split(" ").each do |word| 
        if word.length > 3 
            new_result << word.capitalize
        else word.length <= 3
            if word == 0
                new_result << word.capitalize
            else
                new_result << word
            end
        end
    end   
    new_result[0].capitalize!
    new_result.join(" ")
end