class API < Grape::API
  prefix 'api'
  version 'v0', using: :path
  format :json
  default_error_status 400
  rescue_from :all do |e|
    error_response({ message: e.message })
  end

  ALLOWED_PARAMS = [].freeze

  helpers do
    def allowed_params
      ActionController::Parameters.new(params).permit(ALLOWED_PARAMS)
    end
  end

  resource :issues do
    get do
      Issues.all
    end

    # get ':twitter_id' do
    #   User.find_by(twitter_id: params[:twitter_id])
    # end
    #
    # get ':twitter_id/friends_list' do
    #   user = User.find_by(twitter_id: params[:twitter_id])
    #   user.friends
    # end
    #
    # post 'create' do
    #   if user = User.find_by(twitter_id: params[:twitter_id])
    #     user
    #   else
    #     user = User.new(twitter_id: params[:twitter_id],
    #                      image_url: params[:image_url],
    #                   device_token: params[:device_token])
    #     user.save ? user : error!
    #   end
    end
  #
  #   post 'poke' do
  #     apn_info = {
  #       receivers: params[:pokees],
  #       message: "#{params[:poker]}さんが話したそうにこっちを見ているよ|ω・`）",
  #       event: 'poked',
  #     }
  #     APN.apn(apn_info)
  #   end
  # end
  #
  # resource :friend_ship do
  #   # for development
  #   get do
  #     Friendship.all
  #   end
  #
  #   post 'create' do
  #     applicant = User.find_by(twitter_id: params[:applicant_twitter_id])
  #     approver = User.find_by(twitter_id: params[:approver_twitter_id])
  #
  #     friend_ship = Friendship.new(
  #       approver_id: approver.id,
  #       applicant_id: applicant.id,
  #     )
  #     if friend_ship.save
  #       apn_info = {
  #         receivers: [params[:approver_twitter_id]],
  #         message: "#{params[:applicant_twitter_id]}さんに友達追加されたよ！",
  #         event: 'added_as_a_friend',
  #         applicant_twitter_id: params[:applicant_twitter_id],
  #       }
  #       APN.apn(apn_info)
  #
  #       friend_ship
  #     else
  #       error!
  #     end
  #   end
  # end
  #
  # add_swagger_documentation api_version: 'v0'
end
