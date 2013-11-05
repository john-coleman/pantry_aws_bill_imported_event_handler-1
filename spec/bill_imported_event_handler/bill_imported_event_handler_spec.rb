require 'spec_helper'
require_relative '../../bill_imported_event_handler/bill_imported_event_handler'

describe Wonga::Daemon::BillImportedEventHandler do
  let(:api_client) { instance_double('Wonga::Daemon::PantryApiClient').as_null_object }
  let(:logger) { instance_double('Logger').as_null_object }
  subject { described_class.new(api_client, logger) }

  it_behaves_like 'handler'
  describe "#handle_message" do
    let(:message) { 'test' }

    it "sends post request" do
      subject.handle_message(message)
      expect(api_client).to have_received(:send_post_request).with('/costs', message)
    end
  end
end

