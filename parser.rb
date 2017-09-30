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
#     >ability
#       >damage_amount (array of all damage)
#       >damage_type (array of types of damage)
#       >ability_type (DOT or single hit)
#       >casting_time
#       >recast_time
#       >recovery_time
#       >number_of hits_for_dots


# delimiters:
# log_file "(..)"
# character "'s" - OTHERS "you" - AUTO-ATTACK "your" - ABILITY
# ability name "hits", "misses"
# for "crit type"
# of "damage amount"
# "damage type"
















