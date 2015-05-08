require 'spec_helper'

describe 'webserver::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'displays the home page' do
    expect(command("wget http://localhost").exit_status).to eq 0
  end
  

end