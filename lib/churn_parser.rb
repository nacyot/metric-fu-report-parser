module MetricFuReport
  class ChurnParser
    attr_accessor :yaml
    
    def initialize(target = "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:churn]
      @file = []
      @churn = []
    end

    def parse_files_churn
      @yaml[:changes]
    end
    
    def parse_classes_churn
      @yaml[:class_churn]
    end

    def parse_methods_churn
      @yaml[:method_churn]
    end
  end
end


    
