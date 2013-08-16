require File.join(__dir__, 'boot')
require File.join(__dir__, 'metric_fu_report_parser/version')

class MetricFuReportParser
  attr_accessor :yaml
  
  def initialize(target: "tmp/metric_fu_sample.yml")
    @yaml = ::Psych.load_file(target)
  end

  def classes
    names = []
    @yaml[:flog][:method_containers].each do | cl |
      names << cl[:name] if cl[:name] !~ /::/
    end
    names
  end
end


