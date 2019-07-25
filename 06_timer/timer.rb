class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  # Getter
  def seconds
    @seconds
  end

  # Setter
  def seconds=(new_seconds)
    @seconds = new_seconds
  end

  def time_string
    # Divide by the number of seconds per hour to get the hours
    hours = @seconds / 3600
    # Grab the remainder left over for our minutes
    remainder = @seconds % 3600
    # Calculate our minutes by dividing the number of seconds in a minute
    minutes = remainder / 60
    # Grab the remainder by modulusing sixty seconds to see what's left over
    seconds = remainder % 60
    "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
 
end

timer1 = Timer.new
timer1.seconds = 100000

puts timer1.time_string