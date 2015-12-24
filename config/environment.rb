require 'bundler/setup'
Bundler.require

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'capybara'

$: << '.'

Dir["app/models/*.rb"].each {|f| require f}
