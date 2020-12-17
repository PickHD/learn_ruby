class Blurb
  attr_accessor :content, :time, :mood
  
  def initialize(mood,content="")
    @time = Time.now
    @content = content[0..39]
    @mood = mood
  end

  def moodify
    if @mood == :sad
      return ":-("
    elsif @mood == :happy
      return ":-)"
    elsif @mood == :cringe
      return " ~:- |"
    elsif @mood == :confused
      return "? :- |"
    else 
      return ":- |"
    end
  end
end

class Blurbalizer
  
  def initialize(title)
    @title = title
    @blurbs = []
  end
  
  def add_a_blurb(mood,content) 
    @blurbs << Blurb.new(mood,content)
  end
  
  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs. "
    
    @blurbs.sort_by {|t|
      t.time  
    }.reverse.each {|t|
      puts "#{t.content.ljust(40)} #{t.moodify} #{t.time} "	   
    }
  end

end

myapp = Blurbalizer.new "The Big Blurb"

myapp.add_a_blurb :happy,"Gintama new Last Movies !!"
myapp.add_a_blurb :sad,"Gintama going to be end."
myapp.show_timeline
