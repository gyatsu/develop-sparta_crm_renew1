set :stage, :development

role :app, %w{root@160.16.109.151}
role :web, %w{root@160.16.109.151}
role :db, %w{root@160.16.109.151}

role :app, %w{root@160.16.109.151}
role :web, %w{root@160.16.109.151}
role :db, %w{root@160.16.109.151}


server '160.16.109.151',
user: 'root',
roles: %w{web app db},
ssh_options: {
 auth_methods: %w(password),


 password: '********'

}
