# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ENV['RAILS_ENV'] ||= 'production'

ENV["SECRET_KEY_BASE"] = "5f28952bd30b2003f451bc7bf562625541dae743aea1d17541c5ad529c5e5dbbc049b55c47214851e75137a101f045c2d8515666dcf7fbce3b00a66d3dab5931"
