def hipsterfy(word)
vowels="aeiou"

i=word.length-1
while i>=0
if vowels.include?(word[i])
    return word[0...i]+word[i+1..-1]
end
i-=1
end
return word
end


# def vowel_counts(strings)
# hash={"a"=>0,"e"=>0,"i"=>0,"o"=>0,"u"=>0}
# strings.each_char do |char|
# if hash.has_key?(char.downcase)
#     hash[char.downcase]+=1
# end
# end
# return hash
# end


def vowel_counts(strings)
    vowels="aeiou"
 return strings.split("").inject(Hash.new(0)) do |hash,char|
        hash[char.downcase]+=1 if vowels.include?(char.downcase)
        hash
    end
   
end

 puts vowel_counts("code bootcamp")

def caesar_cipher(str,n)
alpha=("a".."z").to_a
res=""
str.each_char do |char|
if alpha.include?(char)
    x=alpha.index(char)+n
    res+=alpha[x%alpha.length]
    
else
    res+=char
end

end
return res
end