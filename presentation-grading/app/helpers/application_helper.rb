module ApplicationHelper
  def errors_for(resource, field)
    errors = resource.errors[field]
    if errors.any?
      "<div class='row padding'><span class='bg-danger padding'>#{errors.first}</span></div>".html_safe
    end
  end
end
