class VotesController < ApplicationController


	

		def create

			#again, because were in Votes controller
			#the story id is found by params[:story_id]
			@post = Post.find(params[:post_id])

			#create instead of new because we dont need to worry about validations
			@vote = @post.votes.create

			flash[:success] = "You've voted"

			#redirect_to story_path(@post)

			if params[:back_to] == "home"
				#back to homepage
				redirect_to root_path
			else
				#go to the story page
				redirect_to root_path
			end
		end

end
