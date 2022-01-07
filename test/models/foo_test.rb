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

    # Foo の validate 時の foo.hoge の出力結果
    # => #<Hoge id: 2, name: nil, created_at: "2022-01-07 04:35:51.922661000 +0000", updated_at: "2022-01-07 04:35:51.922661000 +0000">
    # 問題なさそう 🤔
  end
end
