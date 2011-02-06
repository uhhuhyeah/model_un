require 'model_un'

describe ModelUN do
  
  it "should be able to read the data hash" do
    ModelUN::US_STATE_NAMES.should_not == nil
    ModelUN::US_STATE_ABBR.should_not == nil
  end
  
  describe "states" do
    it "should return the input if no match on abbreviation" do
      abbr = 'XX'
      ModelUN.convert(abbr).should == 'XX'
      ModelUN.convert_state_abbr(abbr).should == 'XX'
    end

    it "should return the input if no match on full name" do
      state = 'Foobar'
      ModelUN.convert(state).should == state
      
    end
    
    it "should return a full state for an abbreviation" do
      abbr = 'CA'
      ModelUN.convert(abbr).should == 'California'
      ModelUN.convert_state_abbr(abbr).should == 'California'
    end
    
    it "should return an abbreviation for a full state name" do
      state = 'California'
      ModelUN.convert(state).should == 'CA'
      ModelUN.convert_state_name(state).should == 'CA'
    end
    
    it "should return an abbreviation for a full state name for a state name with two words" do
      state = 'New Hampshire'
      ModelUN.convert(state).should == 'NH'
      ModelUN.convert_state_name(state).should == 'NH'
    end
  end


  describe "countries" do
    it "should return the input if no match on country abbreviation" do
      abbr = 'XX'
      ModelUN.convert(abbr).should == 'XX'
      ModelUN.convert_nato_country_abbr(abbr).should == 'XX'
    end

    it "should return the input if no match on country full name" do
      country = 'Foobar'
      ModelUN.convert(country).should == 'Foobar'
      ModelUN.convert_nato_country_name(country).should == 'Foobar'
    end
    
    it "should return a full country name for an abbreviation" do
      abbr = 'SWE'
      ModelUN.convert(abbr).should == 'Sweden'
      ModelUN.convert_nato_country_abbr(abbr).should == 'Sweden'
    end
    
    it "should return an abbreviation for a full country name" do
      country = 'Sweden'
      ModelUN.convert(country).should == 'SWE'
      ModelUN.convert_nato_country_name(country).should == 'SWE'
    end
    
    it "should return an abbreviation full country name for a country name with two words" do
      country = 'Czech Republic'
      ModelUN.convert(country).should == 'CZE'
      ModelUN.convert_nato_country_name(country).should == 'CZE'
    end
  end

end