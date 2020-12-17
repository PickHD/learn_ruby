# 1. IF-ELSE CONDITION

# def watch_adult_movie ages
#   if ages <= 17
#     puts "sorry you can't watch this movie because still under age."
#   else
#     puts "Ready to go!"
#   end
# end

# 2. IF-ELSE IF CONDITION

def check_exam_score scores
  if scores >= 95 
    puts "Perfecto! (SS)"
  elsif scores >= 90
    puts "Perfect! (A)"
  elsif scores >= 80
    puts "Good! (B)"
  elsif scores >= 70
    puts "Try again! (C)"
  else
    puts "WHY R U RUNNIN ?"
  end
end

puts check_exam_score 100