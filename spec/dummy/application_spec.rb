require 'spec_helper'

describe Dummy::Application do

  it "is a Rails Application" do
    expect(Rails.application).to be_a_kind_of described_class
  end

  it "sets the root do spec/dummy" do
    expect(Rails.root.to_s).to eq File.expand_path('..', __FILE__)
  end

end
