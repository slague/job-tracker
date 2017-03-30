require 'rails_helper'

describe "User edits an existing category" do
  scenario "a user can edit a category" do
    category = Category.create!(title: "Technology")
    visit edit_category_path(category)

    fill_in "category[title]", with: "Development"
    click_button "Update"

    expect(current_path).to eq(category_path(category))

    within('.success') do
      expect(page).to have_content("Development category updated!")
      expect(page).to_not have_content("Technology category updated")
    end
  end
end
