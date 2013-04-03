require './test/minitest_helper'

module Minibank
  class TestPerson < MiniTest::Unit::TestCase
    def test_init
      person = Person.new('Jan', 'Kowalski')
      assert person.to_s =~ /Jan Kowalski/
      assert person.to_s =~ /#{person.id}/
      assert person.id > 1
    end
  end
end
