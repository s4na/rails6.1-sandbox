require "test_helper"

class HogeTest < ActiveSupport::TestCase
  test "#save" do
    hoge = Hoge.new
    assert hoge.save
  end
end
