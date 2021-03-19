require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "admin is valid" do
    admin = Admin.new(email: "vh12albuquerque@gmai.com", password: "123456")

    expect(admin.email).to eql "vh12albuquerque@gmai.com"
    expect(admin).to be_valid
  end

  it "admin is not valid" do
    admin = Admin.new(email: "vh12albuquerque@gmai.com")
    expect(admin).to_not be_valid
  end 

end
