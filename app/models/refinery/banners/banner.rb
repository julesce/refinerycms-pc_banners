module Refinery
  module Banners
    class Banner < Refinery::Core::BaseModel
      self.table_name = 'refinery_banners'

      acts_as_indexed :fields => [:name, :url, :title, :description]

      validates :name, :presence => true
      validates_presence_of :start_date
      validates_length_of :title, :in => 0..255, :allow_nil => true
      validates_length_of :description, :in => 0..255, :allow_nil => true
          
      belongs_to :image, :class_name => '::Refinery::Image'
      has_and_belongs_to_many :pages, :class_name => '::Refinery::Page', :join_table => 'refinery_banners_pages'

      scope :not_expired, -> {
        banners = Arel::Table.new(::Refinery::Banners::Banner.table_name)
        where(banners[:expiry_date].eq(nil).or(banners[:expiry_date].gt(Time.now)))
      }
      scope :active, -> {where(:is_active => true)}
      scope :published, -> {
        not_expired.active.where("start_date <= ?", Time.now).order(:position)
      }

    end
  end
end

#t.string :name
#t.string :title
#t.string :description
#t.integer :image_id
#t.string :url
#t.boolean :is_active
#t.date :start_date
#t.date :expiry_date
#t.integer :position