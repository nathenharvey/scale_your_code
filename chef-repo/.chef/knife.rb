# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "nharveysyc"
client_key               "#{current_dir}/nharveysyc.pem"
validation_client_name   "nharveysyc-validator"
validation_key           "#{current_dir}/nharveysyc-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/nharveysyc"
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:aws_ssh_key_id]  = ENV['AWS_KEYPAIR_NAME']
knife[:aws_access_key_id]  = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:region] = ENV['AWS_REGION']

