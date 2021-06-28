class ApplicationController < ActionController::Base
  before action :authenticate_user!
end
