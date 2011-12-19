module Availability
  
  class Change
    
    ETERNITY = Date.parse("3000-01-01")
    REPLACEMENT_INTERVAL = 1.month #1.year
    
    attr_accessor :date
    attr_accessor :quantities

    def initialize(attr)
      @date = attr[:date]
      @quantities = []
    end
  
  #############################################

    # compares two objects in order to sort them
    def <=>(other)
      self.date <=> other.date
    end

    def start_date
      date
    end
  
  #############################################
  
    def in_quantity_in_group(group)
      q = quantities.detect {|q| q.group_id == group }
      q.try(:in_quantity).to_i
    end

    def out_quantity_in_group(group)
      q = quantities.detect {|q| q.group_id == group }
      q.try(:out_quantity).to_i
    end

  end

end

