# -*- coding: utf-8 -*-
class GenerateHash
  def self.method_foo(source_array)
    hash = {}
    source_array.each_slice(2) do |array|
      hash[array[0]] = array[1]
    end
    hash
  end

  def self.method_bar(source_array)
    method_foo(source_array.flatten)
  end

  def self.method_baz(keys_array, values_array)
    hash = {}
    keys_array.length.times do |i|
      hash[keys_array[i]] = values_array[i]
    end
    hash
  end
end
