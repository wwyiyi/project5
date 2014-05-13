require 'spec_helper'

describe Post do
  let(:user) { FactoryGirl.create(:user) }
  let(:micropost) {@micropost = user.microposts.build(content: "Lorem ipsum")}
  before do
    # This code is not idiomatically correct.
    @post = micropost.posts.build(content: "Lorem ipsum")
  end

  subject { @post }

  it { should respond_to(:content) }
  it { should respond_to(:micropost_id) }
  its(:micropost_id) { should eq micropost.id }

  

  describe "when micropost_id is not present" do
    before { @post.micropost_id = nil }
    it { should_not be_valid }
  end
end
