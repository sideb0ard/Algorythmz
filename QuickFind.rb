#!/usr/bin/env ruby
@id_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
@id_size =  [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


def union(p, q)
  puts "P is #{p} and Q is #{q}"
  val_p = @id_array[p]
  val_q = @id_array[q]
  puts "id[P] is #{@id_array[p]} and id[Q] is #{@id_array[q]}"
  if val_p != val_q then
    puts "#{val_p} not equal to #{val_q} so ..."
    (0..9).each do |i|
    #@id_array.length.times do |i|
    #@id_array.each do |i|
      puts "Looping through ID_array = #{i}\n"
      if @id_array[i] == val_p then
        puts "array i - #{@id_array[i]} is equal to #{val_p} - now setting to #{val_q}"
        @id_array[i] = val_q
        puts "ARRAY now #{@id_array.to_s}"
      else
        puts "#{@id_array[i]} not equal to #{val_p}"
      end
      puts ""
    end
  end
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
