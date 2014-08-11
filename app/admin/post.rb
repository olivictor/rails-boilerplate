ActiveAdmin.register Post do

  permit_params :title, :body#, :post_category_id

  index do
    column :title
    column :body
    actions
  end

  form do |f|

    f.inputs do
      #f.input :post_category_id, :label => t(:post_category_id), :as => :select, 
      #:collection => PageGroup.all.map{ |g| [g.title, g.id]}

      f.input :title
      f.input :body, as: :wysihtml5, commands: :all , blocks: :all
    end

    f.actions
  end


end