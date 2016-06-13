class SinatraFirstStep < Sinatra::Base
  get '/' do
    send_file 'views/index.html'
  end
end
