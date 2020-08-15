RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.generators do |g|
    g.factory_bot suffix: "factory"
  end

  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end