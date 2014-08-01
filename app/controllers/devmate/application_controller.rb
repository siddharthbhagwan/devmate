module Devmate
  class ApplicationController < ActionController::Base

    def fetchData
      path = File.join(Devmate::Engine.root, 'config', 'data', 'quotes.json')
      if File.exists?(path)
        quotes_file = File.read(path)
        quotes_hash = JSON.parse(quotes_file)
        test_data = Hash[ 
          :position => Devmate.position,
          :timeout => Devmate.timeout,
          :call_timeout => Devmate.call_timeout,
          :maxVisible => Devmate.maxVisible,
          :close_with => Devmate.close_with,
          :data_count => quotes_hash.length.to_s,
          :data => quotes_hash
        ]
        respond_to do |format|
          format.json {
            render json: test_data.to_json
          }
        end
      end
    end
  end
end
