class String
  define_method(:weekday_finder) do
    split_time = self.split('/') #["1", "5", "2015"]
    month = split_time.at(0)
    day = split_time.at(1)
    year = split_time.at(2)
    input_time = Time.new(year, month, day)
    if input_time.monday?()
      "Monday"
    elsif input_time.tuesday?()
      "Tuesday"
    elsif input_time.wednesday?()
      "Wednesday"
    elsif input_time.thursday?()
      "Thursday"
    elsif input_time.friday?()
      "Friday"
    elsif input_time.saturday?()
      "Saturday"
    else
      "Sunday"
    end
  end
end
