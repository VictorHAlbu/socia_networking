FactoryBot.define do
    factory :user do
        name {"Victor"}
        email { "user#{rand(1..1000)}@user.com" }
        phone {"99355570"}
        avatar {Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png')}
        password {"11122233344"}
    end
end