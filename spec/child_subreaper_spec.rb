# frozen_string_literal: true

RSpec.describe ChildSubreaper do
  it "has a version number" do
    expect(ChildSubreaper::VERSION).not_to be nil
  end

  it "does something useful" do
    expect { ChildSubreaper.enable }.not_to raise_error
  end
end
