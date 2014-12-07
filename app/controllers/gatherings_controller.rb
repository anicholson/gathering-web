class GatheringsController < ApplicationController
  include Gathering

  def show
    @gathering = dummy
  end
end
