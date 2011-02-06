module ModelUN
  require "model_un/data"
  require 'yaml'
  
  class << self
    
    def convert(string)
      if string.length == 2
        self.convert_state_abbr(string.upcase)
      elsif string.length == 3
        self.convert_nato_country_abbr(string.upcase)
      else
        self.convert_state_or_country_name(string.upcase)
      end
    end
    
    # US STATES
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
        return US_STATE_ABBR[US_STATE_NAMES.index(state_name.upcase)]
      rescue Exception
        return state_name.downcase.gsub(/\b\w/){$&.upcase}
      end
    end
    
    # COUNTRIES (NATO CODES)
    def convert_country_abbr(country_abbr)
      self.convert_country_abbr(country_abbr)
    end
    
    def convert_nato_country_abbr(country_abbr)
      begin
        return NATO_COUNTRY_NAMES[NATO_ABBR.index(country_abbr)].downcase.gsub(/\b\w/){$&.upcase}
      rescue Exception
        return country_abbr
      end
    end
    
    def convert_country_name(country_name)
      self.convert_nato_country_name(country_name)
    end
    
    def convert_nato_country_name(country_name)
      begin
        return NATO_ABBR[NATO_COUNTRY_NAMES.index(country_name.upcase)]
      rescue Exception
        return country_name.downcase.gsub(/\b\w/){$&.upcase}
      end
    end
    
    def convert_state_or_country_name(name)
      state_abbr = self.convert_state_name(name)
      if state_abbr.upcase == name
        return self.convert_nato_country_name(name)
      else
        return state_abbr
      end
    end
    
    def export_states_list
      {'US States' => US_STATES}.to_yaml.gsub(/\n/,'').gsub(/-/, '').strip
    end
    
  end
end
