require 'rails_helper'
RSpec.describe User, type: :model do
  it "test new user creation with valid attributes to be valid" do
    @user = create(:user)
    expect(@user).to be_valid
  end
  it "test new user creation with not unique username not to be valid." do
    @user = create(:user,username:"FakeUser", email:"faker@email.com",password:"lalalala")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "test new user creation with not unique email not to be valid." do
    @user = create(:user,username:"OtherUser", email:"fake@mail.com")
    @user2 = build(:user)
    expect(@user2).to_not be_valid
  end
  it "test new user creation with longer than 20 characters username not to be valid." do
    @user = build(:user,username:"parallellepipedicusimus")
    expect(@user).to_not be_valid
  end


end
