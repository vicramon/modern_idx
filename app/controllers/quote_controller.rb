class QuoteController < ApplicationController
  expose(:quote, attributes: :quote_params)

  def create
    quote.save
    MailTime::Action.record('9TNyVbs', cookies[:mailtime_delivery_token])
    redirect_to :quote, notice: "Your request for a quote has been sent. We will be in touch soon."
  end

  private

  def quote_params
    params.require(:quote).permit(:name, :email, :organization, :description)
  end

end
