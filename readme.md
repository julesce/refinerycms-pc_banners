# Refinery CMS Banners

Simple banners engine for [Refinery CMS](http://refinerycms.com). Creates a many-to-many relationship between Pages and Banners, allowing an Image to be assigned to a Banner as well.

This version of `refinerycms-pc_banners` supports Rails 3.

## Requirements

Refinery CMS version 2.0.0 and above.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-pc_banners', '2.0.1'

Now, run:

    bundle install

Next, run:

    rails generate refinery:banners

Migrate your database:

    rake db:migrate

And let's hook up the seed data:

    rake db:seed

## Usage

It is up to you to make use of the banners assigned to your pages. To get the published banners for your current page:

    @page.banners.published

Let's say you are using the [Nivo Slider](http://nivo.dev7studios.com/) for your banners in your views, you could do the following:

    <div id="nivo_slider">
      <% if @page.present? and @page.banners.published.present? %>
        <% @page.banners.published.each do |banner| %>
          <%= image_fu(banner.image, '960x310#c') %>
        <% end %>
      <% end %>
    </div>

 Or you can use the following to accomplish something very similar to the above:

    <%= render :partial => 'refinery/banners/shared/banners' %>