require 'rails_helper'

RSpec.describe "Root page", type: :request do
  before { get '/' }
  it { expect(response).to have_http_status 200 }
  it { expect(response.body).to include 'Sign In' }
  it { expect(response).to render_template(:root) }
end
