FactoryBot.define do
  factory :action do
    description { 'Call Mom' }
    done { false }

    trait :done do
      done { true }
    end
  end
end
