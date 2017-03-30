require 'rails_helper'

describe "User creates a new category" do
  scenario "a user can create a new category" do
    visit new_category_path

    fill_in "category[title]", with: "Technology"
    click_button "Create"

    expect(current_path).to eq(categories_path)

    within('.success') do
      expect(page).to have_content("Technology category added!")
    end

    within('li') do
      expect(page).to have_link("Technology")
    end

    expect(Category.count).to eq(1)
  end
end
