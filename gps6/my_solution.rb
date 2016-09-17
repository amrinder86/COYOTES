# Virus Predictor

# I worked on this challenge [by myself, with: Kelvin].
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
#it links the external files to the file we are trying to 
# connect it to.
#
require_relative 'state_data'

class VirusPredictor
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    puts "State is being initialize..."
  end
#virus_effects method is just print these the values of all these instant variables.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
  

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

states = {}
STATE_DATA.each do |state,information|  
states[state] = VirusPredictor.new(information,STATE_DATA[state][:population_density],STATE_DATA[state][:population])
end

states["Alaska"].virus_effects



# STATE_DATA.each do |state, population| VirusPredictor.new(state,STATE_DATA[state][:population_density],STATE_DATA[state][:population]).virus_effects

#   end





#=======================================================================
# Reflection Section
# 2 different hash syntaxes used in STATE_DATA hash are string and symbols
# require_relative
# it basically links the external files to the file we are trying to connect it to.
# require compared to require_relative is less useful and it might have hard time finding files
# that are not in same directory. I would say require_relative is more powerful.
# to iterate through a hash we can use each and map but not map!
# Instant variables stood out when refactoring virus affects.
# Topics I learned today would be "private"..how to make methods private so they are not
# accessible outside the class and more clarification on instant variables.