class PostsController < ApplicationController

def show
   @post = Post.find(params[:id])
   @image_attachments = @post.image_attachments.all
end

def new
   @post = Post.new
   @image_attachment = @post.image_attachments.new
end

def create
   @post = Post.new(post_params)

   respond_to do |format|
     if @post.save
       params[:image_attachments]['photo'].each do |a|
          @image_attachment = @post.image_attachments.create!(:photo => a)
       end
       format.html { redirect_to @post, notice: 'Post was successfully created.' }
     else
       format.html { render action: 'new' }
     end
   end
 end

 private
   def post_params
      params.require(:post).permit(:title, image_attachments_attributes: [:id, :post_id, :photo])
   end

end
