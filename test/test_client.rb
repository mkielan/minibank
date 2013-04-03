require './test/minitest_helper'
require 'ostruct'

module Minibank
  class Client
    def add_account(balance)
      @accounts << OpenStruct.new(balance: balance)
    end
  end

  class TestClient < MiniTest::Unit::TestCase
    def test_init
      c = Client.new('Jan')
      assert_equal 0, c.total_balance
      assert_equal false, c.vip?
    end

    def test_total_balance
      c = Client.new('Jan')
      c.add_account(100)
      c.add_account(200)
      assert_equal 300, c.total_balance
    end

    def test_vip
      c = Client.new('Jan')
      c.add_account(10_000)
      assert_equal false, c.vip?
      c.add_account(80_000)
      assert_equal false, c.vip?
      c.add_account(10_000)
      assert c.vip?
    end
  end
end
