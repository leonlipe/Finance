require 'test_helper'

class ParcialitiesControllerTest < ActionController::TestCase
  setup do
    @parciality = parcialities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parcialities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parciality" do
    assert_difference('Parciality.count') do
      post :create, parciality: { account_id,: @parciality.account_id,, date_start,: @parciality.date_start,, description,: @parciality.description,, last_payment,: @parciality.last_payment,, notes: @parciality.notes, same_day_charge,: @parciality.same_day_charge,, total_aamount,: @parciality.total_aamount,, total_months,: @parciality.total_months,, with_interest,: @parciality.with_interest, }
    end

    assert_redirected_to parciality_path(assigns(:parciality))
  end

  test "should show parciality" do
    get :show, id: @parciality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parciality
    assert_response :success
  end

  test "should update parciality" do
    patch :update, id: @parciality, parciality: { account_id,: @parciality.account_id,, date_start,: @parciality.date_start,, description,: @parciality.description,, last_payment,: @parciality.last_payment,, notes: @parciality.notes, same_day_charge,: @parciality.same_day_charge,, total_aamount,: @parciality.total_aamount,, total_months,: @parciality.total_months,, with_interest,: @parciality.with_interest, }
    assert_redirected_to parciality_path(assigns(:parciality))
  end

  test "should destroy parciality" do
    assert_difference('Parciality.count', -1) do
      delete :destroy, id: @parciality
    end

    assert_redirected_to parcialities_path
  end
end
