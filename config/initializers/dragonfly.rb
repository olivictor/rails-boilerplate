require 'dragonfly'

app = Dragonfly[:images]
app.configure_with(:rails) 
app.configure_with(:imagemagick) 

app.cache_duration = 3600*24*365*3

app.datastore = Dragonfly::DataStorage::S3DataStore.new({
	  :bucket_name        => ENV['S3_BUCKET_NAME'],
		:access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
		:secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
})
