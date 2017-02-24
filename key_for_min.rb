# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
# 1. we need store the current value we're on
# 2. Compare current value with all other values
    # name_hash.length < 1 ? (return nil) : Hash[*name_hash.sort_by(&:last)[0]].each{|k, v| return k}

    if name_hash.length < 1
      return nil
    end
    
      name_hash.reduce{ |f, s| f.last > s.last ? s : f }.first
end
