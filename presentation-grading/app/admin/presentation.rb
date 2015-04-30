ActiveAdmin.register Presentation do
  permit_params :date, :presenter_name, :topics, :classroom_id

  index do
    selectable_column
    id_column
    column :date
    column :presenter_name
    column :grade_count
    actions
  end

  filter :date
  filter :presenter
  filter :topics

  form do |f|
    f.inputs "Presentation Details" do
      f.input(
        :classroom_id,
        as: :select,
        include_blank: false,
        collection: Classroom.current.map{ |x| [x.name, x.id]})
      f.input(
        :date,
        as: :select,
        include_blank: false,
        collection: Presentation::DATE_CHOICES)
      f.input :presenter_name, hint: '(student name)'
      f.input :topics, hint: '(good and bad website)'
    end
    f.actions
  end

end
