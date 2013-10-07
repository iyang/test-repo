require "test/unit"
require "rubygems"
gem "selenium-client"
require "selenium/client"

class TestCase < Test::Unit::TestCase

  def setup
    @verification_errors = []
    @selenium = Selenium::Client::Driver.new \
      :host => "localhost",
      :port => 4444,
      :browser => "*chrome",
      :url => "https://www.google.ca/",
      :timeout_in_second => 60

    @selenium.start_new_browser_session
  end
  
  def teardown
    @selenium.close_current_browser_session
    assert_equal [], @verification_errors
  end
  
  def test_test_case
    @selenium.open "/?gws_rd=cr&ei=36VNUsnCOInu8ASk5YGYBg"
    @selenium.type "id=gbqfq", "hello world"
    @selenium.click "css=div.gsq_a > table > tbody > tr > td"
  end
end
