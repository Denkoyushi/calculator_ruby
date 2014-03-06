def calculator(entire_input)
  answers = []
  questions = entire_input.split("?")
  questions.each do |question|
    answers << single_question_calculator(question)
  end 
  answers
end

def single_question_calculator(sentence)
  operator_words_to_symbols = { 
    "plus" => :+,
    "minus" => :-,
    "times" => :*,
    "multiplied" => :*,
    "divided" => :/,
    "power" => :**
   }

  words_to_delete = ["what", "What", "is", "to", "the", "by"]

  operators = []

  sentence.chomp!("?")
  sentence.chomp!("rd")
  strings_in_sentence = sentence.split(" ")
  strings_in_sentence.delete_if { |string| words_to_delete.include?(string)  }
  
  strings_in_sentence.each_with_index do |string, index|
    if operator_words_to_symbols.include?(string)
      operators << operator_words_to_symbols[string]
      strings_in_sentence.delete_at(index)
    end
  end
  
  integers = []
  strings_in_sentence.each do |number|
    integers << number.to_f
  end

  if integers.length > 2
    result = integers[0..1].inject(operators[0])
    integers.shift(2)
    integers.unshift(result)
    integers.inject(operators[1])
  else
    
    integers.inject(operators[0])
  end
  
end

single_question_calculator("What is 4 plus 6 divided by 2?")
calculator("What is 4 plus 6? What is 3 times 5?")

