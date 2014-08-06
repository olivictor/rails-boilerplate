ActiveAdmin.register Page do

	permit_params :title, :body, translations_attributes: [:locale, :title, :body]

	index do
		translation_status
    column :title
    column :body
		actions
	end

	form do |f|
		f.translated_inputs "Translated fields", switch_locale: false do |t|
			t.input :title
			t.input :body
		end
    f.actions
	end

end
