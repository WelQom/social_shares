module SocialShares
  class Facebook < Base
    URL = 'https://graph.facebook.com/'

    def shares!
      response = RestClient.get(URL, params: { id: checked_url })
      JSON.parse(response)['shares'] || 0
    end
  end
end
