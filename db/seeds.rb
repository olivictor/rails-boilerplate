# --------------------------- Admins ------------------------------
AdminUser.where(email: 'ad.victor.min@gmail.com').
          first_or_create!  email: 'ad.victor.min@gmail.com',
                            password: 'base#2014'

# --------------------------- Page Groups ------------------------------
home = PageGroup.where(title: 'Home').first_or_create!

# --------------------------- Post Categories ------------------------------
PostCategory.where(name: 'Notícias').first_or_create!

# --------------------------- Home ------------------------------
home.pages.where( title: 'Home' ).first_or_create!
