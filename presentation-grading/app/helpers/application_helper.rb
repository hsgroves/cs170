module ApplicationHelper
  def errors_for(resource, field)
    errors = resource.errors[field]
    if errors.any?
      "<div class='row'><span class='panel panel-danger'>#{errors.first}</span></div>"
    end
  end
end
