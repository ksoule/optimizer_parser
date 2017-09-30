# (1499828669) - log file
# [Tue Jul 11 22:04:29 2017] - date/time
# Phrostflame's - character name + " 's "
# Paragon - ability name
# hits -
# Gorius the Gray - Target name
# for a -
# critical of - damage modifier
# 38122095 - amount of damage
# magic - type of damage
# damage.


#information comes in as a string, NOT comma separated.
#keyword of "YOUR" for the players damage etc.

#filter by name.
# abilities with the same name get put into a hash... of that name, with keys incrementing by one, values are damage done

# log_file is a hash with key of character names changed to symbols, value is a hash of abilities
# each ability is a hash with key of ability changed to symbols, value is hash of "hits"
# hits uses incremental symbols

# log
#   >character
#   >abilities
#       >ability_name
#       >damage_amount (array of all damage)
#       >damage_type (array of types of damage)
#       >ability_type (DOT or single hit)
#       >casting_time
#       >recast_time
#       >recovery_time
#       >number_of hits_for_dots


# character "'s" - OTHERS "you" - AUTO-ATTACK "your" - ABILITY
# ability name "hits", "misses"
# for "crit type"
# of "damage amount"
# "damage type"

line = "(1499828669)[Tue Jul 11 22:04:29 2017] Phrostflame's Paragon hits Gorius the Gray for a critical of 38122095 magic damage."

#parse log file
log_split = line.partition("[")
log_file = log_split[0].slice!(1..-2)
line = log_split[1] + log_split[2]
#parse time stamp
time_stamp_split = line.partition("] ")
time_stamp = time_stamp_split.slice!(0) + time_stamp_split.slice!(0)
line = time_stamp_split[0]
#parse player or mob
  if line[0] == "YOU" || line[0] == "YOUR"
    type = "You"
  elsif line.index(" ") != (line.index("'") + 2)
    type = "NPC"
  else
    type = "other_player"
  end
  p type

  # if type == mob
  #   mob = line.partition("'s ")[0].slice!
  # elsif type == player
  #   player = line.partition("'s ")[0].slice!
  # elsif type == "#{initiator}"
  #   if line[0] == "YOU"















