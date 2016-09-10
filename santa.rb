class Santa

  def initialize(gender,ethnicity)
    @gender =gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
    puts "Gender: #{@gender} Ethnicity: #{ethnicity}"
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
    puts "#{reindeer_name} you don't deserve to be on this list at the moment #{@reindeer_ranking}" 
    @reindeer_ranking << reindeer_name
    puts "Santa gets mad at #{reindeer_name} and  places #{reindeer_name} in last place ranking in #{@reindeer_ranking}"
    end
    
  #setter methods
  def gender=(new_gender)
      @gender = new_gender
  end
  # getter methods 
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  #making this getter method just to test my driver code for line 61 and line 63
  def gender
    @gender
  end 

end

#Driver code 
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

#driver code to check getter and setter methods
santa = Santa.new("agender","Korean")
puts "Santa named Jack is of #{santa.gender} gender and #{santa.ethnicity} ethnicity."
santa.gender=("bigender")
puts "Santa named Jack is of #{santa.gender} gender and #{santa.ethnicity} ethnicity."
