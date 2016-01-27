class MailSender

  def self.send(params)
    Pony.mail({
      to: "tam@codecore.ca",
      from: params[:email],
      subject: "You got contact from #{params[:full_name]}",
      body: params[:message],
      via: :smtp,
      via_options: config
    })
  end

  private

  def self.config
    {
      address:        'smtp.gmail.com',
      port:           '587',
      user_name:      'answerawesome',
      password:       'Sup3r$ecret',
      authentication: :plain,
      domain:         "localhost.localdomain" # the HELO domain provided by the client to the server
    }
  end

end
