# write a method that takes a names and turn it into a fake name
# swap first and last name 
# change vowels "aeiou" to next vowel "eioua"
# change all the consonants to next consonant except vowels


storing_names = {}

loop do
  puts "please answer the following questions. Press 'ENTER' to continue or Type 'quit' to exit."
    input = gets.chomp
break if input == 'quit'

puts "What's your first name?"
  first_name = gets.chomp.downcase

puts "what's your last name?"
  last_name = gets.chomp.downcase

real_name=last_name+" "+first_name

for_hash_name=first_name.capitalize+" "+last_name.capitalize

def name_method(real_name)
    vowels = "aeiou"
    consonants = "bcdfghjklmnpqrstvwxyz"

  vowels.split("")
    split_real_name = real_name.split("")

  modified_name = []

  split_real_name.map! do |word|

      if vowels.include?(word)
          checking_1 = vowels[vowels.index(word)+1]
            modified_name << checking_1
      elsif consonants.include?(word)
          checking_2 = consonants[consonants.index(word)+1]
            modified_name << checking_2
      elsif word == " "
          checking_3 = " "
            modified_name << checking_3
end 
  
end
      modified_name.join("").split.map{|word| word.capitalize}.join(" ")
end

      puts "Your spy name is - " +name_method(real_name)
      
      modified_name = name_method(real_name)

      storing_names[for_hash_name] = modified_name
end

    storing_names.each do |for_hash_name, modified_name|
      puts "=======================================================" 
      puts " #{for_hash_name}'s Spy Name is  #{modified_name}!"
  #Since my real_name is "Last name + first name" my puts was typing it wrong name to display.
  #so for_has_names  fixes that problem.
end