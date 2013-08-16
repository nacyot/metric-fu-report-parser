module MetricFuReport
  class FlayParser
    attr_accessor :yaml
    
    def initialize(target: "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:flay]
    end

    def total_score
      @yaml[:total_score]
    end
    
    def matches
      @yaml[:matches]
    end
  end
end
