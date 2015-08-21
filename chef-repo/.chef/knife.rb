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
