def reformat_languages(languages)
  # your code here
  
  #type: nil for string
  obj = Hash.new {|hash, key| hash[key] = {type: nil, style: []}}

  languages.each_with_object(obj) do |(kay,value), hash|
    value.each do |lang, item|
        hash[lang][:style] << key
        hash[lang][:type] = item[:type] 
  end
 end
end

#https://stackoverflow.com/questions/41493536/iterate-through-nested-hash-to-create-an-array-while-adding-items-to-it