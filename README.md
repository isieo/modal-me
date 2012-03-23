# Modal::Me
 A simple gem to use bootstrap's modal for actions in rails.
 Note that i am using Bootstrap for the modal window. if you don't use bootstrap
 just ommit bootstrap's css and write your own css.
 See app/views/shared/_modal_me.html.erb for the html markup

## Installation

Add this line to your application's Gemfile:

    gem "twitter-bootstrap-rails"
    gem 'modal-me', git: 'git@github.com:isieo/modal-me.git'

And then execute:

    $ bundle

In app/assets/application.js after :

    //= require jquery

Add

    //= require modal_me

## Usage

in your view

    // the format is almost same as link_to except that the last argument is the title of the modal
    <%= modal_me_to 'Edit', edit_user_path(user), {:class=>'btn btn-primary'}, "Edit User" %>

in your controller:

    def show
      @user = User.find(params[:id])
      respond_to do |format|
        format.html
        format.text { render 'show.html',layout: false  }
      end
    end

This will return you the modal without the page layout.



in your layout add:

    render 'shared/modal_me'


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
