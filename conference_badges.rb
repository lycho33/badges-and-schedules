# Write your code here.
def badge_maker(name) 
    return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    attendees.collect do |name| 
        badge_maker(name)
    end
end

def assign_rooms(attendees)
    room_list = []
    attendees.each_with_index do |name, index| 
        room_list.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
    end
    return room_list
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    rooms = assign_rooms(attendees)
    badges.each {|name|puts name}
    rooms.each {|name| puts name}
  end 