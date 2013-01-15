class ChangeDescriptionToText < ActiveRecord::Migration
  def self.up
    change_column :refinery_banners, :description, :text
  end

  def self.down
    change_column :refinery_banners, :description, :string
  end
end