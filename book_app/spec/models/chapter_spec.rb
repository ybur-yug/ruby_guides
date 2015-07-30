require 'rails_helper'

describe Chapter do
  context "associations and validations" do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to have_many :sections }
  end
end
