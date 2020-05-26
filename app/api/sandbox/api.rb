module Sandbox
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    resource :posts do
      desc 'Return all posts'
      get do
        post = Post.new
        post.title_he = 'HE'
        post.title_en = 'EN'

        I18n.with_locale(params[:locale]) do
          present post
        end
      end
    end

  end
end