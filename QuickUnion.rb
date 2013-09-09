#!/usr/bin/env ruby
@id_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
@id_size =  [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


def union(p, q)
  root_p = root(p)
  root_q = root(q)
  puts "Root of p #{p} is #{root_p}"
  puts "Root of q #{q} is #{root_q}"
  puts "Setting root of p to root of q #{root_q}"
  @id_array[root_p] = root_q
  puts "ARRAY not #{@id_array.to_s}\n\n"
end

def root(i)
  puts "#{i} - array_val is #{@id_array[i]}"
  while i != @id_array[i] do
    i = @id_array[i]
  end
  return i
end

File.open(ARGV[0]).each do |l|
  p, q = l.split(' ')
  p = p.to_i
  q = q.to_i
  puts "\nSTART******\nP: #{p} and Q: #{q}"
  puts "P arrayEntry is #{@id_array[p]} and Q entry is #{@id_array[q]}"
  union(p,q)
end

puts @id_array.to_s
