require 'spec_helper'
require_relative '../../bill_imported_event_handler/bill_imported_event_handler'

describe Wonga::Daemon::BillImportedEventHandler do
  it_behaves_like 'handler'
  describe "#handle_message" do
    #add in unit test code for handle message here.
  end
end

