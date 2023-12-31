class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
            publishable_token: Rails.application.credentials.iex_client[:publishable_token],
            secret_token: Rails.application.credentials.iex_client[:secret_token],
            endpoint: 'https://cloud.iexapis.com/v1'
          )

        begin
            new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))
        rescue => exception
            puts "Exception occurred: #{exception.message}"
            return nil
        end
    end

    def self.check_db(ticker_symbol)
        where(tocker: ticker_symbol).first
    end
end
