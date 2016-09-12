class ResultsPage

  include PageObject

  div(:search_result, :id => 'resultStats')
  #About 2,070 results (0.20 seconds)

  def search_results
    search_result_element.when_present
    search_result.sub(/ result.*/,'').sub(/,/,'').sub(/^About /,'')
  end

end