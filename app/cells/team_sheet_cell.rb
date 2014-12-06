require 'ostruct'

class TeamSheetCell < Cell::ViewModel
  self_contained!

  def show
    render
  end

  private

  def team_sheet
    [
     OpenStruct.new(
      role: 'Welcoming',
      name: 'Amanda Lyons'
     ),
     OpenStruct.new(
      role: 'Bible Reading',
      name: 'Daniel Broadbridge'
     ),
     OpenStruct.new(
      role: 'Music',
      name: 'Band A',
      contact: OpenStruct.new(
                name: 'Dave Carbines',
                phone: '04xx xxx xxx'
               )
     )
    ]
  end

end
