module ModelUn
  require "model_un/data"
  
  class << self
    
    def convert(string)
      if string.length == 2
        self.convert_state_abbr(string.upcase)
      else
        self.convert_state_name(string.upcase)
      end
    end
    
    def convert_state_abbr(state_abbr)
      self.convert_state_abbreviation(state_abbr)
    end
    
    def convert_state_abbreviation(state_abbr)
      begin
        return US_STATE_NAMES[US_STATE_ABBR.index(state_abbr)].downcase.gsub(/\b\w/){$&.upcase}
      rescue Exception
        return state_abbr
      end
    end
    
    def convert_state_name(state_name)
      begin
        return US_STATE_ABBR[US_STATE_NAMES.index(state_name)]
      rescue Exception
        return state_name.downcase.gsub(/\b\w/){$&.upcase}
      end
    end
    
  end
end
