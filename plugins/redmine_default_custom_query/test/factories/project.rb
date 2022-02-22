FactoryGirl.define do
  factory :project do
    sequence(:name) {|n| "Project#{n}"}
    sequence(:identifier) {|n| "project-#{n}"}

    trait :with_default_url_options do
      after(:create) do |project|
        create :default_url_options_module, project: project
      end
    end
  end
end
