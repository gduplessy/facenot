class Picture < ActiveRecord::Base
  validates_presence_of :uid
  validates_uniqueness_of :uid

  def self.random
    ids = connection.select_all("SELECT id FROM pictures WHERE gender = 'female'")
    find(ids[rand(ids.length)]['id'].to_i) unless ids.blank?
  end
  
end
