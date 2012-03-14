
FactoryGirl.define do
  factory :banner, :class => Refinery::Banners::Banner do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

