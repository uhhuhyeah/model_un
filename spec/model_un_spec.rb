require 'model_un'

describe ModelUn do
  
  it "should be able to read the data hash" do
    ModelUn::US_STATE_NAMES.should_not == nil
    ModelUn::US_STATE_ABBR.should_not == nil
  end
  
  it "should return an abbreviation for a full state" do
    state = 'California'
    ModelUn.convert(state).should == 'CA'
  end
  
  it "should return a full state for an abbreviation" do
    abbr = 'CA'
    ModelUn.convert(abbr).should == 'California'
  end
  
  it "should return the input if no match on abbreviation" do
    abbr = 'XX'
    ModelUn.convert(abbr).should == 'XX'
  end
  
  it "should return the input if no match on full name" do
    state = 'Foobar'
    ModelUn.convert(state).should == state
  end

end