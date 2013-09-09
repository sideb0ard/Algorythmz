#!/usr/bin/env ruby

intsArray = ARGV[0].split(' ').map {|i| i.to_i}
count = 0

(0...intsArray.size).each do |i|
  (i+1...intsArray.size).each do |j|
    (j+1...intsArray.size).each do |k|
      total = intsArray[i] + intsArray[j] + intsArray[k]
      puts "#{intsArray[i]} + #{intsArray[j]} + #{intsArray[k]} = #{total}"
      if intsArray[i] + intsArray[j] + intsArray[k] == 0
        count += 1
      end
    end
  end
end

puts "Final count of triples balancing to 0 is __ #{count}"
