require 'rspec'
require 'weekday_finder'

describe 'String#weekday_finder' do
  it "checks if it's monday." do
    expect("1/5/2015".weekday_finder()).to eq "Monday"
  end

  it "checks what day of the week it was on the recieved date" do
    expect("1/9/2015".weekday_finder()). to eq "Friday"
  end

end
