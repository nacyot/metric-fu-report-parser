module MetricFuReport
  class FlogParser
    attr_accessor :yaml
    
    def initialize(target: "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:flog]
    end

    def total_score
      @yaml["total"]
    end

    def average_score
      @yaml["average"]
    end

    def klasses
      @yaml[:method_containers]
    end
  end
end


