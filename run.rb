require 'pry'
require_relative 'lib/artist'
require_relative 'lib/author'
require_relative 'lib/post'
require_relative 'lib/song'

daft_punk = Artist.new('Daft Punk')
voyager = Song.new('Voyager')
voyager.artist = daft_punk
test = Song.new('test')
binding.pry