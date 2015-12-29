class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end
	def index
		@tag =tags.all
	end
	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Tag deleted!"
		redirect_to tags_path
	end

end



