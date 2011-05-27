require 'spec_helper'

feature "CoffeeScript" do
  
  scenario "should render a .js.coffee file." do
    visit drinks_url(:format => 'js')
    
    page.should have_content('(function() { alert("i like coffee!"); }).call(this);')
  end
  
  scenario "should render a block with helper tags" do
    visit drinks_url
    
    page.body.to_s.should == %{<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=US-ASCII\">\n<script type=\"text/javascript\">(function() {\n  alert("coffee script is awesome!");\n}).call(this);\n</script><script>\n  (function() {\n  alert("coffee script is really awesome!");\n}).call(this);\n</script>\n</head></html>\n}
    
  end
  
end