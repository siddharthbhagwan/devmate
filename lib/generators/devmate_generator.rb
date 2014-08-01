class DevmateGenerator < Rails::Generators::Base
  desc 'This generator creates an initializer file at config/initializers for devmate'

  def create_initializer_file
    create_file 'config/initializers/devmate.rb', 
"Devmate.setup do |config|

    # Where would ypu like the notification to appear?
    # [top, topLeft, topCenter, topRight, centerLeft, center, centerRight, bottomleft, bottomCenter, bottomRight, bottom]
    config.position = 'topRight'

    # How long before its dismissed
    config.timeout = 5000

    # Max Visible
    config.maxVisible = 1

    # Call every n seconds
    config.call_timeout = 8000

    # close with
    config.close_with = 'click'

  end
end "
  end
end