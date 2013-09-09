#!/usr/bin/env ruby

intz = ARGV[0].split(" ").map {|x| x.to_i}
key = ARGV[1].to_i

puts "Looking for #{key} in Sorted Array #{intz}"


def binarySearch(intz,key)
  lo = 0
  hi = intz.length - 1
  while lo <= hi do
    puts "Lo is #{lo} and high is #{hi}"
    mid = lo + (hi - lo) / 2
    if key < intz[mid] then
      hi = mid - 1;
    elsif key > intz[mid] then
      lo = mid + 1;
    elsif key == intz[mid] then
      puts "Found it! key #{key} is at position #{mid}"
      return mid
    end
  end
  return "blah - not found"
end

value = binarySearch(intz,key)

puts "DONE - key #{key} is #{value}"
