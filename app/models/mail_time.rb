class MailTime

  def self.url; 'http://mailtime.herokuapp.com/api/v1/actions' ; end

  module Action

    def self.record(event_id, delivery_id, quantity=0)
      if event_id.present? && delivery_id.present?

        RestClient.post MailTime.url, {
          delivery_identifier: delivery_id,
          event_identifier: event_id,
          quantity: quantity
        }

      end
    end

  end

end
