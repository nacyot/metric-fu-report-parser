module MetricFuReport
  class RoodiParser
    attr_accessor :yaml
    
    def initialize(target: "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:roodi]
    end

    def total
      @yaml[:total]
    end
    
    def problems
      @yaml[:problems]
    end
  end
end
