class ImagesController < ApplicationController
	before_action :find_image, only: [:show, :edit, :update, :destroy]

	def index
		@images = Image.all
	end

	def new
		@image = Image.new 
	end

	def create
		# render plain: params[:image].inspect
		@image = Image.new image_params
		if @image.save
			redirect_to @image, notice: 'Image was successfully saved.' 
		end

		# redirect_to @image
	end

	def show
		# @image = Image.find params[:id]
	end

	def edit
		# @image = Image.find params[:id]
	end

	def update
		# @image = Image.find params[:id]
		if @image.update(image_params)
			redirect_to @image, notice: 'Image was successfully Updated.' 
		end	
	end

	def destroy
		# @image = Image.find params[:id]
		if @image.destroy
			redirect_to @image, notice: 'Image was successfully Deleted.' 
		end	
	end

	private

	def find_image
		@image = Image.find params[:id]
	end

	def image_params
		params.require(:image).permit :picture, :description
	end

end
