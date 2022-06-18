def average(num1,num2)
return (num1+num2)/2.0;
end


def average_array(array)
(array.sum)/(array.length*1.0)
end

# average_array([2, 4, 6])

def repeat(str,num)
return str*num
end

def yell(str)
return str.upcase+'!'
end

def alternating_case(sentence)
#     newArr=[]
#     sentence.split(" ").each.with_index do |word,i|
#     if i.even?
#         newArr.push(word.upcase)
#     else
#          newArr.push(word.downcase)     
#     end
# end
# newArr.join(" ")

sentence.split.map.with_index{|word,i| i.even? ? word.upcase : word.downcase}.join(" ")

end