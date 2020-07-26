class Company
  attr_accessor :name, :domain, :logo

  @@all = []

  def initialize(hash)
    hash.each { |k,v| self.send(("#{k}="), v) }
    self.save
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.wipe
    self.all.clear
  end

end
