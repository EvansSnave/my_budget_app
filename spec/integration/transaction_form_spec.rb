# spec/features/groups_spec.rb

require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  let(:user) { create(:user) }

  before do
    login_as(user, scope: :user)
  end

  scenario 'user creates a new group' do
    visit new_group_path

    fill_in 'group_name', with: 'New Test Group'
    choose 'icon_fas_fa-bicycle'

    click_button 'Save'

    expect(page).to have_content('New Test Group')
    expect(page).to have_content('Categories')
  end
end
