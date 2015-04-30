ActiveAdmin.register GradeSubmission do
  permit_params :email, :presentation_id

  index do
    selectable_column
    id_column
    column :email
    column :presentation do |grade|
      grade.presentation.presenter_name
    end
    actions
  end

  filter :email
  filter :presentation_id

  form do |f|
    f.inputs "Presentation Details" do
      f.input :email
      f.input(
        :presentation,
        as: :select,
        collection: Presentation.all.map { |x| [x.presenter_name, x.id]}
        )
    end
    f.actions
  end

end
