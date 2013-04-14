class Film < ActiveRecord::Base
  attr_accessible :description, :film

  validates :description, presence: true
  validates :user_id, presence: true
  validates_attachment :film, presence: true,
                            content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            size: { less_than: 5.megabytes }
  belongs_to :user
  has_attached_file :film, styles: { medium: "320x240>"}
end