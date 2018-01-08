require 'active_support/concern'
require './bug/processor'

module Bug
  module Brain
    extend ActiveSupport::Concern

    def pressures
      @_pressures ||= Hash.new
    end

    def processor
      @_processor ||= Bug::Brain::Processor.new
    end

    def register_pressure(pressure, active=true)
      pressures[pressure] = active
    end

    def active_pressures
      pressures.keys.select {|pressure| pressures[pressure] }
    end

    def inactive_pressures
      pressures.keys.select {|pressure| !pressures[pressure] }
    end
  end
end