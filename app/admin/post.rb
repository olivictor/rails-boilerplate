ActiveAdmin.register Post do

  permit_params :title, :body, :post_category_id, :attachment

  index do
    column :title
    column :body
    actions
  end

  form do |f|

    f.inputs do
      f.input :post_category_id, :label => t(:post_category_id), :as => :select, 
      :collection => PostCategory.all.map{ |g| [g.title, g.id]}

      f.input :attachment, label: 'Anexo (apenas pdf)'
      f.input :title
      f.input :body, as: :wysihtml5, commands: :all , blocks: :all, height: :large
    end

    f.actions
  end


end
