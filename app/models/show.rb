class Show < ActiveRecord::Base

  def self.most_popular_show
    Show.all.max_by { |show| show.rating }
  end

  def self.highest_rating
    show = Show.most_popular_show
    show.rating
  end

  def self.least_popular_show
    Show.all.min_by { |show| show.rating }
  end

  def self.lowest_rating
    show = Show.least_popular_show
    show.rating
  end

  def self.ratings_sum
    Show.all.inject(0) { |sum, show| sum + show.rating }
  end

  def self.popular_shows
    Show.all.select { |show| show.rating > 5 }
  end

  def self.shows_by_alphabetical_order
    Show.all.order(:name)
  end

end
