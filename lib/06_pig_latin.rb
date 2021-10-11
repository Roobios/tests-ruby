def translate(string)
    sentence = string.split(" ")
    final_string = []
    sentence.each do |word|
        if word.start_with?('a','e','i','o')
        word<<'ay'
        final_string << word
        else
        pos=nil
        ['i','a','e','o','q','u'].each do |vowel|
            pos = word.index(vowel)
            break unless pos.nil?
        end
        unless pos.nil?
            pre = word.partition(word[pos, 1]).first
            word.slice!(pre)
            word<<pre+'ay'
            final_string << word
        else
            #code to be executed when no vowels are there in the word
            #eg words fry,dry
        end
        end
    end
    return final_string.join(" ")
end

# puts translate("eat pie")
# puts translate("cherry")
# puts translate("school")