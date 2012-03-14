module Refinery
  module Banners
    module Extensions
      module Page
        module ClassMethods
          def add_banners_relationship
            has_and_belongs_to_many :banners, :class_name => '::Refinery::Banners::Banner', :join_table => 'refinery_banners_pages'
          end
        end

        def self.included(base)
          base.extend(ClassMethods).add_banners_relationship
        end
      end
    end
  end
end