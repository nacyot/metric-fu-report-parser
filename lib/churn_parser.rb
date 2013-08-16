require 'psych'
require 'metric_fu'
require 'pp'

module MetricFuReport
  class ChurnParser
    attr_accessor :yaml
    
    def initialize(target: "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:churn]
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


    
