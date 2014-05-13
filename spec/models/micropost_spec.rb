require 'spec_helper'

describe Micropost do

  let(:user) { FactoryGirl.create(:user) }
  before { @micropost = user.microposts.build(content: "Lorem ipsum") }

<<<<<<< HEAD
=======

>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  subject { @micropost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should eq user }
<<<<<<< HEAD

  it { should be_valid }

=======
  
  it { should be_valid }
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  describe "when user_id is not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @micropost.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @micropost.content = "a" * 141 }
    it { should_not be_valid }
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
