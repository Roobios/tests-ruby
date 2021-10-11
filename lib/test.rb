def translate(word)
    if word.start_with?('a','e','i','o')
      word<<'ay'
    else
      pos=nil
      ['a','e','i','o'].each do |vowel|
        pos = word.index(vowel)
        break unless pos.nil?
      end
      unless pos.nil?
        pre = word.partition(word[pos,1]).first
        word.slice!(pre)
        word<<pre+'ay'
      else
        #code to be executed when no vowels are there in the word
        #eg words fry,dry
      end
    end
end

puts translate("apple")
puts translate("cherry")
puts translate("school")