require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "user comment a post" do
  
    boris = FactoryBot.create(:user)
    alex = FactoryBot.create(:user)
 
    post = FactoryBot.create(:post, user: boris)

    comment = FactoryBot.create(:comment, user: alex, post: post)

    expect(post.comments.count).to eql 1
    expect(post.comments.first.user).to eql alex
    expect(post.comments.first.body).to eql "Belo Post "

  end
end
