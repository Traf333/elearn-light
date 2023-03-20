require "rails_helper"

RSpec.describe LearningPathsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/learning_paths").to route_to("learning_paths#index")
    end

    it "routes to #show" do
      expect(get: "/learning_paths/1").to route_to("learning_paths#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/learning_paths").to route_to("learning_paths#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/learning_paths/1").to route_to("learning_paths#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/learning_paths/1").to route_to("learning_paths#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/learning_paths/1").to route_to("learning_paths#destroy", id: "1")
    end
  end
end
