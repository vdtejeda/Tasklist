require 'rails_helper'

RSpec.feature "UserCompletesTask", type: :feature do
  before(:each) do
    create :task
    visit root_path
  end

  scenario 'successfully' do
    click_link('Complete')

    expect(page).to_not have_content('Some Task')
    expect(page).to have_content('My Tasks')
  end

end
