class QuoteController < ApplicationController

  def create
    AdminMailer.quote(params).deliver
    redirect_to :quote, notice: "Your request has been sent. We will be in touch shortly."
  end

end
