require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pl = PigLatinizer.new
    user_phrase = params[:user_phrase]
    @pig_text = pl.to_pig_latin(user_phrase)
    erb :pig_latin_results
  end

end
