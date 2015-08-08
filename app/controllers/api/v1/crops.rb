module API
  module V1
    class Crops < Grape::API
      include API::V1::Defaults

      resource :crops do
        desc "Return all crops"
        get "", root: :crops do
          Crops.all
        end

        desc "Return a single crop"
        params do
          requires :id, type: String, desc: "ID of the crop"
        end
        get ":id", root: "crop" do
          Crop.find_by_id(id: permitted_params[:id])
        end
      end
    end
  end
end
