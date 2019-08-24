require "rails_helper"

feature "User marks todo incomplete" do
    scenario "successfully" do
        sign_in
        
        create_todo "Buy milk"

        click_on "Mark complete"
        click_on "Mark incomplete"
                
        # expect(page).not_to have_css ".todos li.completed", text: "Buy milk"
        # expect(page).to have_css ".todos li.completed", text: "Buy milk"
        # expect(page).not_to display_completed_todo "Buy milk"
        # expect(page).to display_todo "Buy milk"
    end
    
    def create_todo(todo_title)
        click_on "Add a new todo"
        fill_in "Title", with: todo_title
        click_on "Submit"
    end    
end