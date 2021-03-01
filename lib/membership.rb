class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all = []

  def initialize(cost:0, lifter: unknown, gym: unknown)
    @cost   = cost
    @lifter = lifter
    @gym    = gym

    @@all << self
  end

  def self.all
    @@all
  end

end
