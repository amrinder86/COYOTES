module Shout
  
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(word)
    puts "Hahaha ...#{word} ...this? Nice one."
  end
end
#driver code 
  puts Shout.yell_angrily("STOP")
  puts Shout.yelling_happily("woah")


