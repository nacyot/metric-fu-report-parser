require 'rubygems'
require 'bundler/setup'
require 'pp'
Bundler.require(:default, :development)
require File.join(__dir__, 'metric_fu_report_parser')
require File.join(__dir__, 'churn_parser')
require File.join(__dir__, 'flog_parser')
require File.join(__dir__, 'flay_parser')
require File.join(__dir__, 'saikuro_parser')
require File.join(__dir__, 'reek_parser')
require File.join(__dir__, 'roodi_parser')
