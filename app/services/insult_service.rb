class InsultService 
  def connection
    url = "https://pirate.monkeyness.com/api/insult"
    Faraday.new(url)
  end

  def get_insult
    response = connection.get
    insult = response.body
  end
end