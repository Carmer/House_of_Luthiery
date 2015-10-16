require "rails_helper"

RSpec.feature "Landing page", type: :feature do
  scenario "User visits homepage" do

    visit "/"
    
    expect(page).to have_content("House of Luthiery")
    expect(page).to have_css("#banner")
  end
end
