require 'bundler/setup'
require 'date'
require 'artii'
require 'billboard_charts'
require 'pp'
require 'colorize'

puts ("*" * 11).colorize(:blue) + (Date.today.strftime("%a %d %b %Y")).colorize(:yellow) + ("*" * 11).colorize(:blue)

a = Artii::Base.new(font: "big")
puts a.asciify("Hot 100").colorize(:magenta)

BillboardCharts.new.get_list.each.with_index(1) { |(title, artist), index|
  puts "#{index}.#{title} - #{artist}"
}





