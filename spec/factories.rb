FactoryGirl.define do
  factory :company do
    name 'Acme Corp'
  end

  factory :dispute do
    title "Unjustly reposessed rocket"
    company
    description "They took my Acme 9000 jet pack"
  end
end
