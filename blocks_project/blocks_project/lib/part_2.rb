def all_words_capitalized?(array)

return array.all?{|word| word == word[0].upcase+word[1..-1].downcase}

end

def no_valid_url?(array)
# endings=['.com', '.net','.io','.org']

array.none? do |url|
 url.end_with?('.com', '.net','.io','.org')
end

end
def any_passing_students?(array)

array.any?{|students| (students[:grades].sum)/students[:grades].length >75}
end


