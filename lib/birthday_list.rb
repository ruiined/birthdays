require 'Date'

class BirthdayList
  def initialize
    @birthdays = [
      { name: "Queen Fly", birthday: Date.new(1979, 3, 12) },
      { name: "King Bread", birthday: Date.new(1999, 2, 21) },
      { name: "Prince Cheese", birthday: Date.new(1897, 12,1) },
      { name: "Princess Moss", birthday: Date.new(1345, 2, 15) }
    ]
  end

  def list
    @birthdays.each { |person| puts "#{person[:name]}'s birthday: #{person[:birthday]}" }
  end

  def add(name, date)
    @birthdays << { name: name, birthday: Date.new(date) }
  end
end