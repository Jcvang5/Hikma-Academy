# frozen_string_literal: true

class CheckoutsController < ApplicationController
  before_action :authenticate_user!
end
