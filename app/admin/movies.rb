ActiveAdmin.register Movie do
  permit_params :title, :description, :category_id

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :category_id, label: 'Select category', :as => :select, :collection => Category.all.map {|c| [c.title, c.id]}
    end
    f.actions
  end
end
