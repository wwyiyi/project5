FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
<<<<<<< HEAD
    sequence(:email) { |n| "person_#{n}@example.com" }
=======
    sequence(:email) { |n| "person_#{n}@example.com"}
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
    password "foobar"
    password_confirmation "foobar"

    factory :admin do
      admin true
    end
  end
<<<<<<< HEAD

=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  factory :micropost do
    content "Lorem ipsum"
    user
  end
<<<<<<< HEAD
end
=======
  
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
