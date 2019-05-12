# require "riperecipes/version"
require 'pry'
require 'open-uri'

module Riperecipes
  class Error < StandardError; end

  class Scraper
    # binding.pry
    def something
      puts 'hello'
    end
    
    # def self.scrape_index_page
    #   binding.pry
    #   doc = Nokogiri::HTML(open("https://www.allrecipes.com/"))
    #   puts 'hello'
    #   binding.pry
    #   # doc = Nokogiri::HTML(open(index_url))
    # end

  end
end

