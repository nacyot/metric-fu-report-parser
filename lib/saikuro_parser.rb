module MetricFuReport
  class SaikuroParser
    attr_accessor :yaml
    
    def initialize(target: "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:saikuro]
    end

    def files
      @yaml[:files]
    end

    def klasses
      @yaml[:classes]
    end

    def methods
      @yaml[:methods]
    end
  end
end
