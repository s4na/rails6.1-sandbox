class Foo < ApplicationRecord
  belongs_to :hoge

  validate :check_hoge_id

  def check_hoge_id
    p 'hoge'
    p hoge
    p '---'
  end
end
