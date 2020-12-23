class ApplicationController < ActionController::Base
  def hello
    render html: "hi huy"
  end
end
