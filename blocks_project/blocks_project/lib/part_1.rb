def select_even_nums(arr)
    return arr.select{|num| num.even?}
end




def reject_puppies(arr)
return arr.reject{|hash| hash["age"]<=2}
end



def count_positive_subarrays(arr)

arr.count{|subArr| subArr.sum>0}

end

def aba_translate(str)
res=""
vowels="aeiou"

str.each_char do |char|
if vowels.include?(char)
res+=char+'b'+char.downcase
else
    res+=char
end

end

return res
end


def aba_array(array)
return array.map{|word| aba_translate(word)}
end