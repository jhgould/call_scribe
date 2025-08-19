require 'rails_helper'

RSpec.feature "RSpec Setup Test", type: :feature do
  scenario "RSpec is working correctly" do
    binding.pry
    expect(true).to be true
  end
end