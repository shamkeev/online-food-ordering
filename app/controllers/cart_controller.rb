class CartController < ApplicationController

  def add
    #Возможно это нужно вынести в метод, и вызывать в before acction, чтобы session[:cart] всегда существовало
    unless session[:cart]
      session[:cart] = []
    end

    session[:cart].push params[:meal]

    redirect_to :back
  end

end
