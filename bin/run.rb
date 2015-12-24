require_relative '../config/environment'

link = Scraper.new("https://deals.androidpit.com/best-sellers")
link.create_doc
link.scrape
Deal.print_all
