require File.dirname(__FILE__) + '/../spec_helper'

feature "Sending a Form" do 
  scenario "should be able to send basic info" do 
    visit '/'
    page.should have_content("hello")
  end
end

puts "WASAAA"
