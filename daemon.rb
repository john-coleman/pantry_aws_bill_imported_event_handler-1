#!/usr/bin/env ruby
require 'rubygems'
require 'wonga/daemon'
require_relative 'bill_imported_event_handler/bill_imported_event_handler'

config_name = File.join(File.dirname(File.symlink?(__FILE__) ? File.readlink(__FILE__) : __FILE__), 'config', 'daemon.yml')
Wonga::Daemon.load_config(File.expand_path(config_name))
Wonga::Daemon.run(Wonga::Daemon::BillImportedEventHandler.new(Wonga::Daemon.pantry_api_client, Wonga::Daemon.config))
