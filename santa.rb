class Santa
    
    attr_reader :age,:ethnicity,:reindeer_ranking
    attr_accessor :gender

  def initialize(gender,ethnicity)
    @gender =gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
    puts "Initializing Santa instance ..."
    puts "Gender: #{@gender}\nEthnicity: #{ethnicity}\n Age:#{@age}"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    puts  "That was a good #{cookie_type}!" 
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    puts "#{reindeer_name} you don't deserve to be on this list at the moment \n #{@reindeer_ranking}" 
    puts ""
    @reindeer_ranking << reindeer_name
    puts "Santa gets mad at #{reindeer_name} and  places #{reindeer_name} in last place ranking in \n #{@reindeer_ranking}"
  end
    
end

#Driver code 
santa= Santa.new("Male","Latino")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#driver code to check getter and setter methods
santa = Santa.new("agender","Korean")
puts "Santa named Jack is of #{santa.gender} gender and #{santa.ethnicity} ethnicity."
puts "Changing gender ......."
puts ""
santa.gender=("bigender")
puts "Santa named Jack now is of #{santa.gender} gender and #{santa.ethnicity} ethnicity."

# making multiples santa
 for i in 1..1500
   puts "==" *28
  santa.speak
    santas << Santa.new(example_genders.sample, example_ethnicities.sample)
    santa.get_mad_at(santa.reindeer_ranking.sample)
    
end
