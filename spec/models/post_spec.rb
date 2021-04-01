require 'rails_helper'

RSpec.describe Post, type: :model do
  it "post is valid" do
    post = FactoryBot.build(:post)
  
    expect(post).to_not be_valid

    post.user = FactoryBot.build(:user)
    post.save

    expect(post).to be_valid
    end

    it "post belongs_to user" do
    user = FactoryBot.create(:user)
    
    post = FactoryBot.build(:post, user: user)
    
    expect(post.user).to eql user
    end
end
