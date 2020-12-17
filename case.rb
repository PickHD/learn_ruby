def hello_automate condition
  case condition
  when "morning"
    puts "Good morning too!"
  when "afternoon"
    puts "Good afternoon too!"
  when "night"
    puts "Good nights too!"
  else
    puts "Invalid condition."
  end
end

puts hello_automate "night"