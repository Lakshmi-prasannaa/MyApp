Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1446918528951189','39a44a3f7d639c5f321c5396a5b95a71',
  {:scope => 'email,user_birthday,read_stream', :display => 'popup'}
end

