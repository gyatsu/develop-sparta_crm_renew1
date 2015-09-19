set :stage, :development
<<<<<<< HEAD
role :app, %w{root@160.16.109.151}
role :web, %w{root@$160.16.109.151}
role :db, %w{root@$160.16.109.151}
=======
role :app, %w{root@${IP_ADDRESS}}
role :web, %w{root@${IP_ADDRESS}}
role :db, %w{root@${IP_ADDRESS}}
>>>>>>> branch

server '160.16.109.151',
user: 'root',
roles: %w{web app db},
ssh_options: {
 auth_methods: %w(password),
<<<<<<< HEAD
 password: ''
=======
 password: '********'
>>>>>>> branch
}
