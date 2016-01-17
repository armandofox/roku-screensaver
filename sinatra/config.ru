require 'rubygems'
require 'bundler'

Bundler.require

require './picasa'
$stdout.sync = true
run Picasa

