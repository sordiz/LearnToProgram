require_relative 'air_conditioner'
require_relative 'electoral_college'
require_relative 'voting_booth'

voting_booth = VotingBooth.new
electorate = voting_booth.ask_for_temperatures

electoral_college = ElectoralCollege.new
winning_temperature = electoral_college.calculate_winning_temperature(electorate)

ac = AirConditioner.new
ac.temperature = winning_temperature
ac.turn_on
