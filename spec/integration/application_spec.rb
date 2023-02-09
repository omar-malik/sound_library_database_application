require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context 'POST /albums' do
    it 'should create a new album' do
      response = post('/albums', title: 'Vyge', release_year: '2022',
      artist_id: 2)

      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/albums')

      expect(response.body).to include('Vyge')
    end
  end

  context 'GET /artists' do
    it 'returns a list of artists' do
      response = get('/artists')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Pxs, AA, Tft, Nine, Kos')
    end
  end

  context 'POST /artists' do
    it 'creates a new artist' do
      response = post('/artists', name: 'Wng', genre: 'Ie')

      expect(response.status).to eq(200)
      expect(response.body).to eq('')

      response = get('/artists')

      expect(response.body).to include('Wng')
    end
  end
end
