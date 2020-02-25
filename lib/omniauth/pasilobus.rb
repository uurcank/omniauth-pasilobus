require "omniauth/pasilobus/version"
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pasilobus < OmniAuth::Strategies::OAuth2
      option :name, :pasilobus

      option :client_options, {
        :site => "https://www.pasilobus.com",
        :authorize_url => "https://www.pasilobus.com/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :name => raw_info["name"],
          :avatar => raw_info["avatar_url"]
        }
      end

      extra do
        skip_info? ? {} : { :raw_info => raw_info}
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
