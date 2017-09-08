require "rails_helper"
require "spec_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    
    # step one, we want to visit the root page
    visit "/"
    # step two, we want to click on new article - how do you know it's called new article? because you are going to build it and will call it new article
    click_link "New Article"
    # step three, fill in the title
    fill_in "Title", with: "Creating a blog"
    # step four, fill in the body
    fill_in "Body", with: "Kids need more ice cream from the government. Because they work too hard at school and should have a break from life.By:CASEY VJEAN PANGILINAN(: <3 for all the kids who work too much."
    # step five, create the button to be clicked on
    click_button "Create Article"

    # Now we write the expectations
    expect(page).to have_content("Article has been created")
    expect(page.current_path).to eq(articles_path)
  end
end