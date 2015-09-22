set :rails_env, :development

# app,web,dbともに同じIPアドレス.
user = "user1"
ipaddress = "160.16.109.151"
role :app, ["user1@160.16.109.151"]
role :web, ["user1@160.16.109.151"]
role :db,  ["user1@160.16.109.151"]

set :ssh_options, {
  # ローカル環境のユーザーの秘密鍵ファイルを設定する
  keys: %w(/Users/Y/.ssh/id_rsa),
  forward_agent: true,
}











# set :stage, :development

# role :app, %w{root@160.16.109.151}
# role :web, %w{root@160.16.109.151}
# role :db, %w{root@160.16.109.151}

# role :app, %w{root@160.16.109.151}
# role :web, %w{root@160.16.109.151}
# role :db, %w{root@160.16.109.151}


# server '160.16.109.151',
# user: 'root',
# roles: %w{web app db},
# ssh_options: {
#  auth_methods: %w(password),


#  password: '********'

# }
