CarrierWave.configure do |config|
  config.ignore_integrity_errors = false
  config.ignore_processing_errors = false
  config.ignore_download_errors = false


  config.fog_provider = "fog/aws"
  	config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region				  => ENV["AWS_REGION"]
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME']
  config.fog_use_ssl_for_aws = false
end