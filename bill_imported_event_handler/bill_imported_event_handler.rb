module Wonga
  module Daemon
    class BillImportedEventHandler
      def initialize(api_client, config)
        @config = config
        @api_client = api_client
      end

      def handle_message(message)
        @api_client.send_post_request('/api/costs', message)
      end
    end
  end
end
