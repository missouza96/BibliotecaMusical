module ApplicationHelper
  def formatar(data)
    data.strftime("%m/%d/%Y %I:%M%p")
  end
end
