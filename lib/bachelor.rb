def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |stats_of_contestant|
    if stats_of_contestant["status"].downcase =="winner"
      return stats_of_contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
data.each do |season, contestant|
  contestant.each do |stats_of_contestant|
    if stats_of_contestant["occupation"]==occupation
      return stats_of_contestant["name"]
    end
  end
end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestant|
    contestant.each do |stats_of_contestant|
      if stats_of_contestant["hometown"]==hometown
        count+=1
      end
    end
  end
  count

end

def get_occupation(data, hometown)
  # code here
  data.each do |data, contestant|
    contestant.each do |stats_of_contestant|
      if stats_of_contestant["hometown"]==hometown
        return stats_of_contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
ages = []
current_season = data[season]
current_season.each do |contestant|
  ages << contestant["age"]
end
age_average = age.size
total = 0
ages.each do |age|
  age = age.to_f
  total =+ age
  total
end
age_average = total/divide
age_average.round(0)
end
