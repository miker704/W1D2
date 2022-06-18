def reverser(str,&prc)
return prc.call(str.reverse())
end

def word_changer(sent,&prc)
    return sent.split(" ").map{|word| prc.call(word)}.join(" ")

end

def greater_proc_value(num,proc1, proc2)
 return   proc1.call(num)>proc2.call(num) ? proc1.call(num) : proc2.call(num)
end

def and_selector(array,proc1,proc2)
return array.select{|ele| proc1.call(ele) && proc2.call(ele)}
end

def alternating_mapper(array,proc1,proc2)
array.map.with_index{|ele,i| i.even? ? proc1.call(ele) : proc2.call(ele)}
end