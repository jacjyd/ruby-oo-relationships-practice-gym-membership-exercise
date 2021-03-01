class Gym
  attr_reader :name

  @@all_gyms = []

  def initialize(name)
    @name = name
  end

  def memberships
    all.select { |membership| membership.gym == self }
  end

  def lifters
    memberships.map { |membership| membership.lifter }
  end

  def lifter_names
    lifters.map { |lifter| lifter.name }
  end

  def combined_lift_total
    lifters.map { |lifter| lifter.lift_total }
      .sum
  end

  def self.all
    @@all_gyms
  end

end
