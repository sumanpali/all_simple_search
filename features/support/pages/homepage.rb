class Homepage

  include PageObject

  page_url 'https://www.google.com/'
  text_field(:search_field, :id => 'lst-ib')
  button(:search_button, :class => 'lsb')

  def search_text data
    self.search_field = data
  end

  def load_yml
    @file = YAML.load_file 'C:\Users\Suman\RubymineProjects\Suman\all_simple_search\all_simple_search.yml'
  end

end