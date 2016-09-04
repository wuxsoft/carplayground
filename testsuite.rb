require 'test/unit/testsuite'
require 'test/unit/ui/console/testrunner'
require_relative './testcarplayground'

class PMUTestSuite
  def self.suite
    suite = Test::Unit::TestSuite.new
    suite << TestCarPlayground.suite
    return suite
  end
end

Test::Unit::UI::Console::TestRunner.run(PMUTestSuite)
