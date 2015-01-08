class String
  define_method(:weekday_finder) do
    split_time = self.split('/') #["1", "5", "2015"]
    month = split_time.at(0)
    day = split_time.at(1)
    year = split_time.at(2)
    input_time = Time.new(year, month, day)
    input_time.strftime("%A")
  end
end
