class Foo < ApplicationRecord
  belongs_to :hoge

  validate :check_hoge_id

  def check_hoge_id
    # validate時のhogeの参照先を確認

    p 'hoge'
    p hoge
    p '---'
  end
end
