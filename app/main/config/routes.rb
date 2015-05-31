# See https://github.com/voltrb/volt#routes for more info on routes

client '/rooms', action: 'rooms'
client '/rooms/{{ name }}', action: 'room'

# The main route, this should be last. It will match any params not
# previously matched.
client '/', {}
