require 'pry'


def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas]<< supply
  holiday_hash[:winter][:new_years]<< supply
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]<< supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
   winter_supplies = []
   holiday_hash[:winter].each do |key, value|
    winter_supplies += holiday_hash[:winter][key]
  end
  winter_supplies
end

def all_holidays_with_bbq(holiday_hash)
  holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, attributes|
      if attributes.include?("BBQ")
        holidays<< holiday
      end
    end
  end
  holidays
end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holiday|
    puts "#{season.capitalize}: #{holiday}"
  end
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|

    puts "#{season.capitalize}:"
    holiday.each do |holiday, attributes|

      string = holiday.to_s
      array = string.split("_")
      array.each do |word|
        word.capitalize!
      end
    capitolizedVersion = array.join(' ')
    puts "  #{capitolizedVersion}: #{attributes.join(', ')}"
    end
  end
end
