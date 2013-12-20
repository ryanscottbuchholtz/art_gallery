class Art < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :available_for_purchase, :inclusion => {:in => [true, false] }
  validates_presence_of :artist
  validates_presence_of :collection
  validates_presence_of :art_type

  belongs_to :artist,
    inverse_of: :arts
  belongs_to :art_type,
    inverse_of: :arts
  belongs_to :collection,
    inverse_of: :arts
  belongs_to :customer,
    inverse_of: :arts

end
