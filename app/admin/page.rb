ActiveAdmin.register Page do

	permit_params :title, :body, :page_group_id,
								translations_attributes: [:locale, :title, :body]

	index do
		translation_status
    column :title
    column :page_group
		actions
	end

	form do |f|
		f.inputs do
			f.input :page_group_id, :label => t(:page_group), :as => :select, 
						:collection => PageGroup.all.map{ |g| [g.title, g.id]}
		end

		f.translated_inputs "Translated fields", switch_locale: false do |t|
			t.input :title
			t.input :body, as: :wysihtml5, commands: :all , blocks: :all
		end
    f.actions
	end

end
