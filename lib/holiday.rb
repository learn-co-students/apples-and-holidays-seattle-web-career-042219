require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  #binding.pry
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  empty = []
  holiday_hash[:winter].each do |holiday, supplies|
    empty.push(supplies)
  end

  empty.join

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  i = 0
  first_keys = holiday_hash.keys
  second_str = " "
  while i < first_keys.length do
    first_str =  "#{first_keys[i].to_s.capitalize!}:" #Winter:
    puts first_str
    j = 0
    second_keys = holiday_hash[first_keys[i]].keys
    while j < second_keys.length do
      holiday = second_keys[j].to_s
          holiday_array = holiday.split("_")
          k = 0

          while k < holiday_array.length do
            holiday_array[k] = holiday_array[k].capitalize!
            k += 1
          end
          holiday = holiday_array.join(" ")

          supplies = holiday_hash[first_keys[i]][second_keys[j]]
          supplies_str = supplies.join(", ")
          #binding.pry
      second_str = "  #{holiday}: #{supplies_str}"
      puts second_str
      j+= 1
    end
  i+= 1
  #binding.pry


  end
#puts second_str

  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  bbq_holidays = []
  i = 0
  seasons_array = holiday_hash.keys
  while i < seasons_array.length do
    current_season = seasons_array[i]
    holidays_array = holiday_hash[current_season].keys
    j = 0
    while j < holidays_array.length do
    current_holiday = holidays_array[j]
    supplies_array = holiday_hash[current_season][current_holiday]
    k = 0
    while k < supplies_array.length do
      current_supply = supplies_array[k]
      if current_supply == "BBQ"
        bbq_holidays << current_holiday
      end
      k += 1
    end

    j+= 1
  end
  i+= 1
  end

  bbq_holidays

end
