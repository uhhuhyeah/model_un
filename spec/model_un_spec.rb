require 'model_un'

describe ModelUN do
  
  it "should be able to read the data hash" do
    ModelUN::US_STATE_NAMES.should_not == nil
    ModelUN::US_STATE_ABBR.should_not == nil
  end
  
  it "should return an abbreviation for a full state" do
    state = 'California'
    ModelUN.convert(state).should == 'CA'
  end
  
  it "should return a full state for an abbreviation" do
    abbr = 'CA'
    ModelUN.convert(abbr).should == 'California'
  end
  
  it "should return the input if no match on abbreviation" do
    abbr = 'XX'
    ModelUN.convert(abbr).should == 'XX'
  end
  
  it "should return the input if no match on full name" do
    state = 'Foobar'
    ModelUN.convert(state).should == state
  end

end