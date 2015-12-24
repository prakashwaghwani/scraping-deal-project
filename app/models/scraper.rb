class Scraper

attr_accessor :url, :doc

  def initialize(url)
    @url = url
  end

  def create_doc
    session = Capybara::Session.new(:selenium)
    session.visit @url
    self.doc = Nokogiri::HTML(session.body)
  end

  def scrape
    self.doc.css("article").each do |x|
      deal = Deal.new
      deal.description = x.css(".sale-detail-title").text
      deal.orig_price = x.css("s").text
      deal.expiry = x.css("abbr").text
      deal.disc_price = x.css(".brand-primary").text
    end
  end
end
