class AddAttachmentFilmToFilms < ActiveRecord::Migration
  def self.up
    change_table :films do |t|
      t.attachment :film
    end
  end

  def self.down
    drop_attached_file :films, :film
  end
end
