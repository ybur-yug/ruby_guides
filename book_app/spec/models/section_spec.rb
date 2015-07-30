require 'rails_helper'

describe Section do
  context "validations and associations" do
    it { is_expected.to belong_to :chapter }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }
  end
end
