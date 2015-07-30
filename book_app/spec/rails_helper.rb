ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'

def create_chapter(title)
  visit chapters_path
  click_on "New"
  fill_in :chapter_title, with: title
  click_on "Create Chapter"
end

def create_section(chapter_title, section_title, body="some things and stuff")
  create_chapter(chapter_title)
  click_on chapter_title
  click_on "New Section"
  fill_in :section_title, with: section_title
  fill_in :section_body, with: body
  click_on "Create Section"
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do |example|
    DatabaseCleaner.strategy= example.metadata[:js] ? :truncation : :transaction
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end


  config.infer_spec_type_from_file_location!
end
