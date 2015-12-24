class Deal
  attr_accessor :description, :expiry, :orig_price, :disc_price
  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_all
    self.all.each.with_index(1) do |y, index|
      puts "#{index}. #{y.description} - #{y.expiry} - #{y.orig_price} - #{y.disc_price}"
    end
  end
end
