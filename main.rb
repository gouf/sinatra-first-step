require_relative  "lib/mechanize/amazon_jp_search"

class SinatraFirstStep < Sinatra::Base
  get '/' do
    send_file 'views/index.html'
  end

  get '/search' do
    keyword = params[:keyword]
    client = Mechanize::AmazonJpSearch::Client.new
    # binding.pry
    @search_result = client.search(keyword)
    erb :search
  end
end
