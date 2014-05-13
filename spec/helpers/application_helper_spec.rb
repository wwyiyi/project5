require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
<<<<<<< HEAD
      expect(full_title("foo")).to match(/^Project5/)
=======
      expect(full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
    end

    it "should not include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end
<<<<<<< HEAD

=======
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
