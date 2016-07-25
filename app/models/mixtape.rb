class Mixtape < ActiveRecord::Base
  has_many :songs

  validates :name, presence: true

  accepts_nested_attributes_for :songs #this is exactly what line 8 method is doing(never use it).

  def songs_attributes=(name)
    songs.each do |index, song_hash|
      self.songs.build(:title => song_hash[:title]) if song_hash[:title].present?
    end
  end
end
