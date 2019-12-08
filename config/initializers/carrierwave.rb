require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test? #開発とテストは今まで通りに
    config.storage = :file
  elsif Rails.env.production? #本番はS3に保存する
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.credentials.aws[:access_key_id],
      aws_secret_access_key: Rails.application.credentials.aws[:secret_access_key],
# credentials下にaws_access_key_idとaws_secret_access_keyはあるよ
      region: 'ap-northeast-1'
    }
    config.fog_directory  = 'miiiika'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/miiika'
  end
end



# if Rails.env.production?
# CarrierWave.configure do |config|
#   config.cache_dir = "#{Rails.root}/tmp/uploads"
#   config.fog_provider = 'fog/aws'
#   config.fog_credentials = {

#     provider: 'AWS',
#     region:  ENV['S3_REGION'],
#     aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],

#   }
#   config.fog_directory  = ENV['S3_BUCKET']
# end
# end
