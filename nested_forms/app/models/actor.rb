class Actor < ActiveRecord::Base
  has_many :characters
  has_many :tv_shows, through: :characters

  # def characters
  #   select * from characters where characters.actor_id = ?
  #   self.id
  # end
end
