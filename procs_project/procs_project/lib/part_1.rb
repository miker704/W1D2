
def my_map(array, &prc)
    newArr=[]
array.each{|ele| newArr.push(prc.call(ele))  }


return newArr
end

def my_select(array,&prc)
newArr=[]
array.each{|ele| newArr.push(ele) if prc.call(ele)}
return newArr
end   

def my_count(array, &prc)
count=0
array.each{|ele| count+=1 if prc.call(ele)}

return count
end


def my_any?(array,&prc)
    array.each{|ele| return true if prc.call(ele)}
    return false
end


def my_all?(array,&prc)

# array.each{|ele| return false if !prc.call(ele)}
# return true
array.count{|ele| prc.call(ele)} ==array.length
end

def my_none?(array,&prc)
    array.each{|ele| return false if prc.call(ele)}
    return true
end