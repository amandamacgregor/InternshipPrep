# Todos controller disallows us to view all todos
# Until signed in
# expect: visit root path, and todos controller redirects me to a sign in
# Sign in (just email - not pushing into a db for this exercise). todo will be associated with that user address.
# Go to todos page - and it should work.
# require "rails_helper"

module Features
    def sign_in
        # visit root_path
        # fill_in "Email", with: "person@example.com"
        # fill_in "Email", :with => "person@example.com", visible: false
        # click_on "Sign in"
        # find('a', text: 'Forgot Password?').click
        sign_in_as "person@example.com"
    end
    
    def sign_in_as(email)
        visit root_path
        fill_in "Email", with: email
        click_on "Sign in"
    end
        
end