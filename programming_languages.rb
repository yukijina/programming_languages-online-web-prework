def reformat_languages(languages)
  # your code here
  
  obj = Hash.new {|hash, key| hash[key] = {type: nil, style: []}}

  languages.each_with_object(obj) do |(style,language), hash|
    language.each do |lang, hash_of_type|
        hash[lang][:style] << style
        hash[lang][:type] = hash_of_type[:type] 
  end
 end
end

#https://stackoverflow.com/questions/41493536/iterate-through-nested-hash-to-create-an-array-while-adding-items-to-it