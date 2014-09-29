class PostsController < ApplicationController
	def index
		@name = "trev"
		@now = Time.now

		@posts = Post.order("created_at desc, votes_count desc")

		@post = Post.new

		

	end

	def new

		@post = Post.new


	end

	def create

		@post = Post.new(post_params)

		@post.ip_address = request.ip

		if @post.save

			
			#go back to homepage
			redirect_to root_path

		else
			
			render "new"

		end


	end

	def edit

	end

	def update

	end

	def destroy

	end


	def post_params
		params.require(:post).permit(:post, :url)
	end

end
