inventory_list = {
  cajas:20,
  madera: 30,
  clavos:15,
  ceramica:80,
}




numbers = [0, -7, 14, -21]

fruit = { apples: 1, peaches: 4, bananas: 3, oranges: 7 }



################EJERCICIO 1#####################

def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each{|key, value|puts "#{key}, quantity: #{value}"}

end
guesses = ['cookies', 'cake', 'ice cream']

################EJERCICIO 2#####################

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index {|item, number| puts "Guess ##{number+1} is #{item}"}
  # fruit.each_with_index {|index| puts"#{index}, quantity: #{nil}"}

end
fruit = { pineapples: nil }
display_guess_order(fruit)

################EJERCICIO 3#####################

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
 
  
   numbers.map {|number| number.abs}

end

################EJERCICIO 4#####################

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4

  inventory_list.select {|fruit, response| response < 4}
end

################EJERCICIO 5#####################

def find_word_lengths(word_list)
  word_list.reduce(Hash.new(0)) do |result, word_list|
    result[word_list]= word_list.length
    result
  end
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson


end

################EJERCICIO 6#####################

animals = ['cat', 'horse', 'rabbit', 'deer']


def coffee_drink?(drink_list)
  drink_list.include?("coffee") || drink_list.include?("espresso") 
  
 
  # use #include? to return true when the drink_list (array) contains the string "coffee" or "espresso"
end

################EJERCICIO 7#####################

drink_list = ["coffee", "water", "tea", "espresso"]

def correct_guess?(guess_list, answer)
  # use #any? to return true when any element of the guess_list (array) equals the answer (number)
  guess_list.any?{|guess_list| guess_list < answer}

end
answer = 5
guess_list = [2, 3, 4, 5]

################EJERCICIO 8#####################

def twenty_first_century_years?(year_list)
  year_list.all?{|year| year.between?(2001, 2100)}
  # use #all? to return true when all of the years in the year_list (array) are between 2001 and 2100
end


year_list = [2001, 2002, 2099, 2100]

################EJERCICIO 9#####################
def correct_format?(word_list)
  word_list.none?{|word|word == word.upcase}
  # use #none? to return true when none of the words in the word_list (array) are in upcase
end
word_list = ["Pepsi", "Coke", "Dr. Pepper"]

################EJERCICIO 10#####################

def valid_scores?(score_list, perfect_score)
  score_list.one?{|score_list, value|value == perfect_score}
  # use #one? to return true when only one value in the score_list (hash) is equal to the perfect_score (number)
end
perfect_score = 10
score_list = { easy_to_read: 10, uses_best_practices: 8, clever: 7 }




p display_current_inventory(inventory_list)
p display_guess_order(guesses)
p find_absolute_values(numbers)
p coffee_drink?(drink_list)
p correct_guess?(guess_list, answer)
p twenty_first_century_years?(year_list)
p correct_format?(word_list)
p valid_scores?(score_list, perfect_score)
p find_word_lengths(word_list)
