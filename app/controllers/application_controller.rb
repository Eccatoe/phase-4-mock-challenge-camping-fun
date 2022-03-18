class ApplicationController < ActionController::API

rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity



def not_found_error(e)
  render json: {errors: "#{e.message}"}, status: 404
end

def unprocessable_entity(e)
  render json: {errors: "#{e.message}"}, status: 422
end

end
