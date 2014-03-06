def calculator(sentence)
  operator_words_to_symbols = { 
    "plus" => :+,
    "minus" => :-,
    "times" => :*,
    "multiplied" => :*,
    "divided" => :/
   }

  words_to_delete = ["what", "What", "is", "to", "the", "by"]

  sentence.chomp!("?")
  strings_in_sentence = sentence.split(" ")
  strings_in_sentence.delete_if { |string| words_to_delete.include?(string)  }
  
  strings_in_sentence.each_with_index do |string, index|
    if operator_words_to_symbols.include?(string)
      strings_in_sentence[index] = operator_words_to_symbols[string]
    end
  end
  operator = strings_in_sentence[1].to_sym
  strings_in_sentence.delete_at(1)
  integers = []
  strings_in_sentence.each do |number|
    integers << number.to_f
  end
  integers.inject(operator)
end

calculator("What is 4 divided by 2?")


