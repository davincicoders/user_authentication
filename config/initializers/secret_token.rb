# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
UserAuthentication::Application.config.secret_key_base = '2be37ebbf39816e96a79806ef51e5c1fade6e0576aa99de6b9291050f8cd70909bccbb01a335bbb52af5f82fcbb7c84942b08d2441db1433b477151cbea712eb'
