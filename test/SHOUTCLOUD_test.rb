require 'test_helper'

describe SHOUTCLOUD do
  describe "UPCASE" do
    it "should turn foo into FOO" do
      SHOUTCLOUD.UPCASE("foo").must_equal("FOO")
    end
  end

  describe "MONKEY PATCHING FUN" do
    it "should turn foo into FOO very slowly" do
      "foo".upcase.must_equal("FOO")
    end
  end
end
