require 'model_un'

describe 'ModelUn' do
  
  it "should be able to read the data hash" do
    ModelUn::US_STATES.should_not == nil
  end
  
  it "should return an abbreviation for a full state" do
    state = 'California'
    ModelUn.convert(state).should == 'CA'
  end
end