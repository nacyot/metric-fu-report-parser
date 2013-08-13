require 'psych'
require 'metric_fu'
require 'pp'

class MetricFuReport
  attr_accessor :yaml
  
  def initialize
    @yaml = Psych.load_file("data/metric_fu_sample.yml")
  end

  def classes
    names = []
    @yaml[:flog][:method_containers].each do | cl |
      names << cl[:name] if cl[:name] !~ /::/
    end
    names
  end
  
end

m = MetricFuReport.new
puts m.classes


