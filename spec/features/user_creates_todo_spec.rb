require "rails_helper"

feature "User creates todo" do
	scenario "successfully" do
		sign_in
		
		create_todo "Buy milk"

		expect(page).to have_css ".todos li", text: "Buy milk"
	end

	def create_todo(todo_title)
		click_on "Add a new todo"
		fill_in "Title", with: "Buy milk"
		click_on "Submit"
	end

end