module MetricFuReport
  class ReekParser
    attr_accessor :yaml
    
    def initialize(target =  "tmp/metric_fu_sample.yml")
      @yaml = Psych.load_file(target)[:reek]
    end

    def matches
      @yaml[:matches]
    end
  end
end
