require 'rails_helper'

describe "User deletes existing category" do
  scenario "a user can delete a category" do
    category = Category.create(title: "Technology")
    category2 = Category.create(title: "Development")
    visit categories_path

    within(".category_#{category.id}") do
      click_link "Delete"
    end

    within('.success') do
      expect(page).to have_content("Technology was successfully deleted!")
    end

    within('li') do
      expect(page).to_not have_link("Technology")
    end
  end
end
