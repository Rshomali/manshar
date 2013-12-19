class Api::V1::ArticlesController < ApplicationController

  before_filter :authenticate_user!, except: [:unsecure]

  def unsecure
    render :text => 'Hello.'
  end

  respond_to :json
  def get
    render :json => {'title' => 'Super Secure Stuff.'}
  end
end
