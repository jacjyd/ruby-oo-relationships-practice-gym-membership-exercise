class Lifter
  attr_reader :name, :lift_total

  @@all_lifters = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all_lifters << self
  end

  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def total_cost
    memberships.map { |membership| membership.cost}
      .sum
  end

  def sign_up (gym, cost)
    Membership.new(cost:cost, lifter: self, gym: gym)
  end

  def self.average_lift_total
    all.sum/all.count
  end

  def self.all
    @@all_lifters
  end

end
