require 'rails_helper'

RSpec.describe Like, type: :model do
  it "user likes a post" do

    andrew = FactoryBot.create(:user)
    victor = FactoryBot.create(:user)
    hugo = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: andrew)

    Like.create(user: hugo, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql hugo

    Like.create(user: victor, post: post)
    expect(post.likes.count).to eql 2
    expect(post.likes.last.user).to eql victor

    Like.find_by(post: post, user: hugo).destroy
    expect(post.likes.count).to eql 1
    expect(post.likes.last.user).to eql victor


  end
end
