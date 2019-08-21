require "rails_helper"
# add smoke test for home page to make sure all is well and set up correctly
# capybara syntax
feature "User visits homepage" do
    scenario "successfully" do
        visit root_path
# rspec syntax
        expect(page).to have_css 'h1', text: 'Todos'
    end
end

