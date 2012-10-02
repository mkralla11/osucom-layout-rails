OSU College of Medicine Layout for Rails
========================================

This gem provides assets and a layout for rails projects.

Installation
------------

`gem 'osucom_layout_rails', :git=>'git@github.com:osuogg/osucom-layout-rails.git'`

Setup
-----

To use the layout insert this at the end of your application.html.erb file:

`<%= render :template=>"layouts/osucom_layout_rails" %>`


Configuration
-------------

As of version 0.6 the layout supplies configuration settings for the HTML Head Title element as well as the Header Title and Header Sub Title (both in the header area of the page layout).

Create an initializer such as config/initializers/osucom_layout.rb

    Rails.application.config.after_initialize do |app|
      app.config.osucom_layout.site_title = 'My Site Title'
      app.config.osucom_layout.header_title = 'My In Page Site Title'
      app.config.osucom_layout.header_subtitle = 'Subtitle of Header'
    end


Page Titles
-----------

You can supply a page title for use in the head tag by setting a @title variable.  The layout comes with a title helper that is used in the layout file. It looks for the @title variable and concats it with the default site title if present using a | as the separator.  Otherwise it displays the site title from configuration.
    

That's all there is for now.

Release Notes:
--------------

v1.0.0 This is the final version before Zurb Foundation was integrated as base framework