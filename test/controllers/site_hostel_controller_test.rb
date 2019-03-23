require 'test_helper'

class SiteHostelControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get site_hostel_Home_url
    assert_response :success
  end

  test "should get Agenda" do
    get site_hostel_Agenda_url
    assert_response :success
  end

  test "should get Fotos" do
    get site_hostel_Fotos_url
    assert_response :success
  end

end
