def calculator(sentence)
math_word = { "plus" => :+ }

delete_array = ["what", "What", "is", "to", "the", "by"]

operator = ""

  sentence.chomp!("?")
  new_sentence = sentence.split(" ")
  new_sentence.delete_if { |string| delete_array.include?(string)  }
  
  new_sentence.each_with_index do |string, index|
    if math_word.include?(string)
      new_sentence[index] = math_word[string]
    end
  end
  operator = new_sentence[1].to_sym
  new_sentence.delete_at(1)
  integers = []
  new_sentence.each do |number|
    integers << number.to_i
  end
  integers.inject(operator)
  # integers
end

calculator("What is 5 plus 8?")


