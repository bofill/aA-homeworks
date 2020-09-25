
# Big O-ctopus and Biggest Fish
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"
fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
a = [1,2,3,4]
# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def sluggish_octopus(array)
    longest_fish = array[0]
    (0...array.length).each do |idx1|
        (idx1...array.length).each do |idx2|
            if array[idx1] < array[idx2] 
                longest_fish = array[idx2]
            else
                longest_fish = array[idx1]
            end
        end
    end
    longest_fish
end

# p sluggish_octopus(fish_arr)


# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.
# O(n log n) nested loop, where the inner loop runs in log n time.

   
def dominant_octopus(array)
    return array if array.length <= 1

    pivot = [array.first]
    left = array[1..-1].select {|ele| ele.length < array.first.length}
    right = array[1..-1].select {|ele| ele.length >= array.first.length}

    arr = dominant_octopus(left) + pivot + dominant_octopus(right)
    arr[-1]
end

# p dominant_octopus(fish_arr)

# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever_octopus(array)

    longest_fish = array.first
    (1...array.length).each do |idx|
        longest_fish = array[idx] if array[idx].length > longest_fish.length
    end
    longest_fish
end

p clever_octopus(fish_arr)


# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(direction, tiles)
    tiles.each_index do |idx|
        return idx if tiles[idx] == direction
    end
    nil
end

p slow_dance("up", tiles_array)
# > 0

p slow_dance("right-down", tiles_array)
# > 3

# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

new_tiles_data_structure = {"up" => 0, "right-up" => 1, "right" => 2, "right-down" => 3, "down" => 4, "left-down" => 5, "left" => 6,  "left-up" => 7}

def fast_dance(direction, tiles)
    return tiles[direction]
end

p fast_dance("up", new_tiles_data_structure)
# > 0

p fast_dance("right-down", new_tiles_data_structure)
# > 3
