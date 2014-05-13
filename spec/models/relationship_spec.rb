require 'spec_helper'

describe Relationship do

  let(:follower) { FactoryGirl.create(:user) }
  let(:followed) { FactoryGirl.create(:user) }
  let(:relationship) { follower.relationships.build(followed_id: followed.id) }

  subject { relationship }

  it { should be_valid }
<<<<<<< HEAD

=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  describe "follower methods" do
    it { should respond_to(:follower) }
    it { should respond_to(:followed) }
    its(:follower) { should eq follower }
    its(:followed) { should eq followed }
  end
<<<<<<< HEAD

=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  describe "when followed id is not present" do
    before { relationship.followed_id = nil }
    it { should_not be_valid }
  end

  describe "when follower id is not present" do
    before { relationship.follower_id = nil }
    it { should_not be_valid }
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
