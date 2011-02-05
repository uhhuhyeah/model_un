require 'model_un'

describe 'ModelUn' do
  
  it "should be able to read the data hash" do
    ModelUn::US_STATES.should_not == nil
  end
  
  it "should return an abbreviation for a full state" do
    state = 'California'
    ModelUn.convert(state).should == 'CA'
  end
  
  it "should return a full state for an abbreviation" do
    abbr = 'CA'
    ModelUn.convert(abbr).should == 'CALIFORNIA'
  end
  
  it "should return the input if no match on abbreviation" do
    abbr = 'XX'
    ModelUn.convert(abbr).should == 'XX'
  end
  
  it "should return the input if no match on full name" do
    state = 'FOOBAR'
    ModelUn.convert(state).should == state
  end
end