module Sandbox
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    resource :posts do
      desc 'Return all posts'
      get do
        I18n.with_locale(params[:locale]) do
          present Post.all
        end
      end
    end

  end
end