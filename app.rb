# frozen_string_literal: true

require 'sinatra'

class App < Sinatra::Base
  get '/' do
    'Hello mate'
  end

  get '/events' do
    (1..100).map do |i|
      {
        seq_no: i
      }
    end.to_json
  end
end
