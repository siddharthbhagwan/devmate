Devmate is a gem that uses [noty](http://ned.im/noty/) to popup random programming and tech quotes from time to time.

Customize the quotes and the timing as per your convenience!

To install, add the gemfile `devmate` to the development group, and do `bundle`.
Add the following to your `config/routes.rb`

    if Rails.env.development?
      mount Devmate::Engine, at: "/"
    end

Add the following to your `application.html.erb`

    <%= javascript_include_tag "devmate/application" unless Rails.env.production? %>

The gem pops up a quote on the top right of the screen on every refresh, that stays for a minute, and appears every 20 minutes.

These options can be overridden by running `rails g devmate`, and setting the approproate values in the initializer file.

This project rocks and uses MIT-LICENSE.