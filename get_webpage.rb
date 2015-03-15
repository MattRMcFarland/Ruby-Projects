#!/usr/bin/env ruby

# Given a list of url arguments, get html and saves text in ./html_files directory
# USAGE:
#	./get_webpage.rb [URLS]

require 'nokogiri'
require 'open-uri'

Dir::mkdir( "html_files", 700) unless Dir::exist?( "html_files" )

page = open('http://en.wikipedia.org/wiki/Puppy').read
puts page.length
puts page

# for each argument, get html text
#ARGV.each do |a|
#	puts open(a).read
#end

# save to file
