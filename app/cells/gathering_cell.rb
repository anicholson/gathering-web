class GatheringCell < Cell::ViewModel
  self_contained!

  def show
    render
  end

  private

  property :occasions
  property :roles
  property :name
  property :one_off

  def day_and_time
    "Sundays at #{model.time}"
  end
end
