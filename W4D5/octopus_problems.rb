#Sluggish Octopus

def sluggish_octopus(arr)
    longest = arr[0]

    (0...arr.length).each do |i|
        (0...arr.length) do |j|
            longest = arr[0]
            if arr[j].length > arr[i].length && arr[j].length > longest.length
                longest = arr[j]
            end
        end
    end
    longest
end

def dominant_octopus(arr)

end

def clever_octopus(arr)
    longest = nil

    (0...arr.length).each do |idx|
        if longest == nil || arr[i].length > longest.length
            longest = arr[i]
        end
    end
    longest
end

#Dancing Octopus

def slow_dance(dir, tiles_array)
    tiles_array.each do |i|
        if tiles_array[i] == dir
            return i 
        end
    end
    nil
end

#if tiles is in a hash map...
def constant_dance(dir, new_tiles_data_structure)
    new_tiles_data_structure[dir]
end