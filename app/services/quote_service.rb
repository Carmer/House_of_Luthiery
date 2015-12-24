class QuoteService

  def initialize
    @connection = Hurley::Client.new("http://api.theysaidso.com/")
  end

  def get_quote
    parse(@connection.get("/qod"))[:contents][:quotes][0][:quote]
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
