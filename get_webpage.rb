#!/usr/bin/env ruby

# Given a list of url arguments, gets html and saves text in ./html_files directory
# Also collects a list of urls found in html
# 
# USAGE:
#	./get_webpage.rb [SEED URL]

require 'nokogiri'
require 'open-uri'

FileDir = "./html_files"

Dir::mkdir( FileDir, 0711) unless Dir::exist?( FileDir )

#page = open('http://en.wikipedia.org/wiki/Puppy').read
#puts page.length
#puts page

def save( url )
	puts FileDir
end

i = 1

# for each argument, get html text
ARGV.each do |a|
	if page = open(a).read
		puts "#{FileDir}/" + a
		File::open( "#{FileDir}/" + i.to_s, "w") { |file| file.write( page ) }	
	else
		puts "Could not open #{a}"
	end
end

# save to file
