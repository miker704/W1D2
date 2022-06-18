# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)

# (2..num).select{|n| prime?(n) && num%n==0}.last

# (2...num).reverse_each do |n| 
#    return true  if prime?(n) && num%n==0 
# end
num.downto(2){|i| return i if prime?(i) && num%i==0 }


end

def prime?(n)
return false if n<2
(2...n).none?{|x| n%x==0 }

end

def unique_chars?(word)
word.split("")==word.split("").uniq
end    

def dupe_indices(array)

hash=Hash.new{|h,k| h[k]=[]}

array.each.with_index do |char,i|
hash[char].push(i)
end

hash.delete_if {|k,v| v.length<2}


return hash
end

def ana_array(array1,array2)
return hashIt(array1) == hashIt(array2) 
end

def hashIt(array)
hash=Hash.new(0)
array.each{|char| hash[char]+=1}
return hash
end


