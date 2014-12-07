class GotoCell < Cell::ViewModel
  self_contained!

  def show
    @model = OpenStruct.new(@model)
    render
  end

  private

  property :name
  property :contact
end
