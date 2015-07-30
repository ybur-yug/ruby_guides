require 'rails_helper'

context "chapters & sections", js: true do
  describe ".create" do
    it "can create a chapter" do
      create_chapter("Doing Things")
      expect(page).to have_content "Saved Successfully"
      expect(page).to have_content "Doing Things"
    end

    it "can create a section" do
      create_section("Doing Things", "fun & games")
      expect(page).to have_content "Saved Successfully"
      expect(page).to have_content "fun & games"
    end
  end

  describe ".edit" do
     it "can edit a chapter" do
      create_chapter("Doing Things")
      click_on "Doing Things"
      click_on "Edit"
      fill_in :chapter_title, with: "Pens"
      click_on "Update Chapter"
      expect(page).to have_content "Pens"
      expect(page).to have_content "Updated Successfully"
    end

    it "can edit a section" do
      create_section("Doing Thingzzz", "fun & gamezzzz", "poop")
      click_on "fun & gamezzzz"
      click_on "Edit"
      fill_in :section_title, with: "wattt"
      fill_in :section_body, with: "doing codinz"
      click_on "Update Section"
      expect(page).to have_content "doing codinz"
      expect(page).to have_content "wattt"
      expect(page).to have_content "Updated Successfully"
    end
  end
end
