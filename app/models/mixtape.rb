class Mixtape < ActiveRecord::Base
  has_many :songs

  validates :name, presence: true

  def songs_attributes=(name)
    songs.each do |song_hash|
      self.songs.build(:title => song_hash[:title]) if song_hash[:title].present?
    end
  end
end
