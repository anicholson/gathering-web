class TwilioScratch
  def initialize
    @client = Twilio::REST::Client.new(
                                       account_sid,
                                       auth_token
                                      )
  end

  def sms(to, message)
    @client.account.messages.create(
      from: from_number,
      to:   to,
      body: message
    )
  end

  private

  def from_number
    '+15595296900'
  end

  def account_sid
    'AC69787ec4850000582d9ce812a06b3d12'
  end

  def auth_token
    '9a56d2cbf52ba078279c605852f59109'
  end
end
