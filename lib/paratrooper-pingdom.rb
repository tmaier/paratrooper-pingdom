require "paratrooper-pingdom/version"
require 'paratrooper/notifier'

module Paratrooper
  module Pingdom

    # Public: Sends notification to Pingdom to stop monitoring while deploy is
    #         happening
    #
    class Notifier < Paratrooper::Notifier
      attr_reader :account_id, :api_key, :application_id

      # Public: Initializes PingdomNotifier
      #
      # app_key        - String app key from Pingdom
      # username       - String Pingdom username
      # password       - String Pingdom password
      def initialize(app_key, username, password)
        @app_key        = app_key
        @username       = username
        @password       = password
      end

      def setup(options = {})
        %x[curl https://api.pingdom.com/api/2.0/checks -X PUT -d "paused=true" -H "App-Key: #{app_key}" -u "#{username}:#{password}"]        
      end

      def teardown(options = {})
        %x[curl https://api.pingdom.com/api/2.0/checks -X PUT -d "paused=false" -H "App-Key: #{app_key}" -u "#{username}:#{password}"]        
      end
    end
  end
end
