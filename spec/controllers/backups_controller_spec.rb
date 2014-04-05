require 'spec_helper'

describe BackupsController do

  describe "GET 'select'" do
    it "returns http success" do
      get 'select'
      response.should be_success
    end
  end

  describe "GET 'regist'" do
    it "returns http success" do
      get 'regist'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end
