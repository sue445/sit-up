# -*- coding: utf-8 -*-
class GenerateHash
  def self.from_flattened_array(source_array)
    raise ArgumentError.new("required source_array even length") unless source_array.length % 2 == 0

    hash = {}
    source_array.each_slice(2) do |array|
      hash[array[0]] = array[1]
    end
    hash
  end

  def self.from_hash_like_array(source_array)
    from_flattened_array(source_array.flatten)
  end

  def self.from_pair_array(keys_array, values_array)
    raise ArgumentError.new("unmatch array length") unless keys_array.length == values_array.length

    hash = {}
    keys_array.length.times do |i|
      hash[keys_array[i]] = values_array[i]
    end
    hash
  end
end
