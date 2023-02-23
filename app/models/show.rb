class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    list = []
        self.characters.each do |person|
            list << "#{person.actor.first_name} #{person.actor.last_name}"
        end
    return list
    end
end