# -*- coding: utf-8 -*-
class EachAndInclude
  # collection : Array of some object
  #   collection.conditions should be Array of Symbol or nil
  # target : finding target (should be Symbol)
  def self.method_foo(collection, target)
    result = []

    collection.each do |item|
      if !item.conditions
        result << item
      elsif item.conditions.include?(target)
        result << item
      end
    end

    result
  end
end
