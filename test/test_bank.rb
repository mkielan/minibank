require './test/minitest_helper'

module Minibank
  class TestBank < MiniTest::Unit::TestCase
    def test_open_account
      jan = Client.new('Jan')
      Bank.open_account(jan, 100)
      Bank.open_account(jan, 200)
      anna = Client.new('Anna')
      Bank.open_account(anna, 300)
      Bank.open_account(anna, 200)
      Bank.open_account(anna, 200)
      assert_equal 300, jan.total_balance
      assert_equal 2, jan.accounts.size
      assert_equal 700, anna.total_balance
      assert_equal 3, anna.accounts.size
    end
  end
end
