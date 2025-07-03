class Picture < ActiveRecord::Base
  validates_presence_of :uid
  validates_uniqueness_of :uid

  def self.random
    where(gender: 'female').order('RANDOM()').limit(1).first
  end
end
