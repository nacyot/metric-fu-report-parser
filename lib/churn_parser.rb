require 'psych'
require 'metric_fu'
require 'pp'

module MetricFuReport
  class ChurnParser
    attr_accessor :yaml
    
    def initialize
      @yaml = Psych.load_file("data/metric_fu_sample.yml")[:churn]
      @file = []
      @churn = []
    end

    def parse_file_churns
      @yaml[:changes]
    end

    def parse_class_churns
      @yaml[:class_churn]
    end

    def parse_method_churns
      @yaml[:method_churn]
    end
  end
end

mc = MetricFuReport::ChurnParser.new
puts mc.parse_file_churns
puts mc.parse_class_churns
puts mc.parse_method_churns
