module MetricFuReport
  class RbpParser
    attr_accessor :yaml
    
    def initialize(target: "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:rails_best_practices]
    end

    def total
      @yaml[:total]
    end
    
    def problems
      @yaml[:problems]
    end
  end
end
