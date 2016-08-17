class HeartsController < ApplicationController
	def create
   	 @heart = Heart.new(heart_params)
        if @heart.save
        format.html { redirect_to @heart.post, notice: 'Hearted that post!' }
        #format.json { render :show, status: :created, location: @post }
      else
        redirect_to root_url, notice: "Had an issue creating that heart."
        #format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
      params.require(:heart).permit(:post_id)
    end
end
