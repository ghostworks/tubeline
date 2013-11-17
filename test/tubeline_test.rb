require "tubeline"
require "minitest/autorun"

module Tubeline
  def self.fetch_xml
    File.read(File.join(File.dirname(__FILE__), "fixtures", "response.xml"))
  end
end

class TubelineTest < MiniTest::Unit::TestCase
  def test_parsing
    assert_equal Tubeline.status[:central][:technical], "GoodService"
  end
end
