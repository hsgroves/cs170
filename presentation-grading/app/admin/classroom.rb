ActiveAdmin.register Classroom do
  permit_params :name, :current

  index do
    selectable_column
    id_column
    column :name
    column :current do |classroom|
      classroom.current ? 'Yes' : 'No'
    end
    actions
  end

  filter :name
  filter :current

  form do |f|
    f.inputs 'Classroom Details' do
      f.input :name
      f.input :current
    end
    f.actions
  end

end
