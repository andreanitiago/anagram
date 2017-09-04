#!/usr/bin/env ruby
#If are you using MacOs X, so execute on console ./anagram.rb "/location_file/wl.txt" > output.txt
require "fileutils"

file_location = ARGV[0]
type = ARGV[1]
anagram = []
pairs   = []
output  = []
words = File.foreach(file_location).map{|line| line.split(' ')}
words.each{|w| anagram << [original: w[0], ordened: w[0].chars.sort(&:casecmp).join]}
result = anagram.flatten.group_by{|a| a[:ordened]}.sort
result.each{|r| if type == 'anagram' && r[1].size > 1; pairs << r[1]; elsif type == 'ananagram' && r[1].size == 1; pairs << r[1]; end;}
pairs = pairs.sort_by{|x| x[0][:original]}
pairs.each{|x| output << x.collect{|u| u[:original]}.join(",")}
output.each{|o| puts o}
