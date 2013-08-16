require 'rubygems'
require 'bundler/setup'
require 'pp'
Bundler.require(:default, :development)
require File.join(__dir__, 'metric_fu_report_parser')
require File.join(__dir__, 'churn_parser')
require File.join(__dir__, 'flog_parser')
