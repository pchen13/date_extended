require 'spec_helper.rb'

describe Date do
  it "Date.year == #{Date.today.year}" do
    Date.year.should == Date.today.year
  end
  
  it "Date.month == #{Date.today.month}" do
    Date.month.should == Date.today.month
  end
  
  context 'first friday of month' do
    let(:data) { [ [2013, 1, 4], [2012, 12, 7] ] }
    it "works" do
      data.each do |date|
        year, month, day = date
        friday = Date.first_friday(month, year)
        friday.should == Date.new(year, month, day)
        friday.wday.should == 5
      end
    end
  end
  context 'last sunday of month' do
    let(:data) { [ [2013, 7, 28], [2012, 7, 29]]}
    it 'works' do
      data.each do |date|
        year, month, day = date
        sunday = Date.last_sunday(month, year) 
        sunday.should == Date.new(year, month, day)
        sunday.wday.should == 0
      end
    end
  end   
  context 'last friday of month' do
    let(:data) { [ [2013, 7, 26], [2012, 7, 27]]}
    it 'works' do
      data.each do |date|
        year, month, day = date
        friday = Date.last_friday(month, year)
        friday.should == Date.new(year, month, day)
        friday.wday.should == 5
      end
    end
  end
end
