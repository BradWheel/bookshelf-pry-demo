require 'spec_helper'
require_relative '../../../../apps/web/controllers/home/index'

Pry.config.hooks
Pry.config.hooks.add_hook(:before_session, :say_hi) { puts "hello" }

describe Web::Controllers::Home::Index do
  let(:action) { Web::Controllers::Home::Index.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end
