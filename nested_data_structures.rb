# Customer is wondering which level is best to watch the game and what suggestions are provided by stadium support.
# Create a nested structure with array and hashes 
# Write few calls to access various parts the nested structure.


cricket_stadium = {
  level_1: {
    rows: ["first 40 rows", "yellow color"],

    seating_info: {
      total_seats: 10000,
      reserved_already: 6000,
      seats_available_for_Sale: 4000,
    },
    Visibility_level: ["very clear view", "If you have the $$$ buy tickets at this level"]
  },

level_2: {
    rows: ["50 rows above Level 1", "red color"],

    seating_info: {
      total_seats: 13000,
      reserved_already: 2000,
      seats_available_for_Sale: 11000,
    },
    Visibility_level: ["clear view", "Close to food stands and you don't need binoculars"]
  },

level_3: {
    rows: ["60 rows above level 2", "sky blue color"],

    seating_info: {
      total_seats: 18000,
      reserved_already: 17500,
      seats_available_for_Sale: 500,
    },
    Visibility_level: ["very hard to see the game", "Bring binoculars if you want to see what's going on ground"]
  },

Media_box_level: {
    rows: ["Top row on right hand side of stadium towards exit", "bright green color"],

    seating_info: {
      total_seats: 10,
      reserved_already: 0,
      seats_available_for_Sale: "Out of your price range",
    },
    Visibility_level: ["Restricted", "ONLY FOR VIP MEMBERS"]
  }
}

puts "How long is level 1?"
puts  "It is #{cricket_stadium[:level_1][:rows][0]}"
puts""

puts "what color are all the levels in stadium?"
puts "Level 1 is #{cricket_stadium[:level_1][:rows][1]}.
Level 2 is #{cricket_stadium[:level_2][:rows][1]}.
level 3 is #{cricket_stadium[:level_3][:rows][1]}.
Media Box Level is #{cricket_stadium[:Media_box_level][:rows][1]}."
puts""

puts "Which level has the best view to watch the game of Cricket?"
puts "Level 1 has #{cricket_stadium[:level_1][:Visibility_level][0]}. \nSuggestion/Advice : #{cricket_stadium[:level_1][:Visibility_level][1]}.
At Level 2 you get a #{cricket_stadium[:level_2][:Visibility_level][0]}. \nSuggestion/Advice : #{cricket_stadium[:level_2][:Visibility_level][1]}.
At level 3 It's #{cricket_stadium[:level_3][:Visibility_level][0]}. \nSuggestion/Advice : #{cricket_stadium[:level_3][:Visibility_level][1]}.
At Media Box Level the view is #{cricket_stadium[:Media_box_level][:Visibility_level][0]}. \nSuggestion/Advice : #{cricket_stadium[:Media_box_level][:Visibility_level][1]}."
puts""

puts "How many seats are available at each level as of now?"
puts "Number of seats available as of now are:
Level 1 = #{cricket_stadium[:level_1][:seating_info].values_at(:seats_available_for_Sale)} Seats.
Level 2 = #{cricket_stadium[:level_2][:seating_info][:seats_available_for_Sale]} Seats.
Level 3 = #{cricket_stadium[:level_3][:seating_info][:seats_available_for_Sale]} Seats.
Media Box level = #{cricket_stadium[:Media_box_level][:seating_info][:seats_available_for_Sale]}.Price is too high for you."

puts "Thank you for your time :)"
