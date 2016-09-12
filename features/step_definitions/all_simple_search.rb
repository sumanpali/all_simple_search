Given(/^user is on google homepage$/) do
  visit Homepage
end

And(/^user enters a text and clicks on search$/) do
  @fil = on(Homepage).load_yml
  on(Homepage).search_text @fil['search_data']
  on(Homepage).search_button_element.click
end

Then(/^user verifies if he is getting correct result$/) do
  p actual = on(ResultsPage).search_results
  expected = "2040"
  fail "if actual #{actual} is not same as expected #{expected}" unless "#{actual}".eql? "#{expected}"
end