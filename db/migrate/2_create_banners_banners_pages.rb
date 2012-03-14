class CreateBannersBannersPages < ActiveRecord::Migration
  def self.up
    create_table :refinery_banners_pages, :id => false do |t|
      t.integer :page_id
      t.integer :banner_id
    end

    add_index :refinery_banners_pages, :page_id
    add_index :refinery_banners_pages, :banner_id
  end

  def self.down
    drop_table :refinery_banners_pages
  end
end
