require './test/minitest_helper'

module Minibank
  class TestAccount < MiniTest::Unit::TestCase
    def test_init
      account = Account.new
      assert_equal 0, account.balance
      assert_equal '$', account.currency
      assert account.to_s =~ /\$0/
      assert account.to_s =~ /#{account.id}/
      assert account.id > 1
    end

    def test_balance
      account = Account.new(100)
      assert_equal 100, account.balance
      assert account.to_s =~ /\$100/
    end

    def test_currency
      account = Account.new(50, 'PLN ')
      assert account.to_s =~ /PLN 50/
    end
  end
end
