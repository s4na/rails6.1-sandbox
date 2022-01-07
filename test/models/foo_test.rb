require "test_helper"

class FooTest < ActiveSupport::TestCase
  test "#save 関連付けがあると作成できない" do
    foo = Foo.new
    assert_not foo.save
  end

  test "#save 関連付けがあると作成できる" do
    hoge = Hoge.new
    assert hoge.save
    foo = Foo.new(hoge: hoge)
    assert foo.save
    assert_equal hoge, foo.hoge
  end

  test "#update" do
    hoge = Hoge.new
    assert hoge.save
    foo = Foo.new(hoge: hoge)
    assert foo.save
    assert_equal hoge, foo.hoge

    hoge2 = Hoge.new(id: 2)
    assert hoge2.save

    p '============='

    # エラーが出ないか確認
    foo.update!(hoge_id: hoge2.id)
  end
end
