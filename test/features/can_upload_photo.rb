require "test_helper"

class CanUploadPhotoTest < Capybara::Rails::TestCase
  test "uploading photo, appear on homepage" do
    img_url = "http://i.ytimg.com/vi/Gm5qDGGqRDU/maxresdefault.jpg"
    visit root_path
    click_link "New Photo"
    fill_in "Url", with: "http://i.ytimg.com/vi/Gm5qDGGqRDU/maxresdefault.jpg"
    click_button "Create Photo"
    assert page.has_image? img_url

  end
end
