class PostsController < ApplicationController

def index
   @user = current_user
   @posts = @user.posts
end

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
   if @post.save
     params[:image_attachments]['photo'].each do |a|
        binding.pry
        @image_attachment = @post.image_attachments.create(:photo => a)
     end
     redirect_to @post
     flash['notice'] = 'Post was successfully created.'
   else
     render 'new'
   end
 end

 def edit
   @post = Post.find(params[:id])
 end

def update
  @post = Post.find(params[:id])
  if @post.update(post_params)
    params[:image_attachments]['photo'].each do |a|
       @image_attachment = @post.image_attachments.create(:photo => a)
    end
    redirect_to post_path(@post)
    flash['notice'] = 'Post was successfully updated.'
  else
    render :edit
  end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end

 private
   def post_params
      params.require(:post).permit(:title, image_attachments_attributes: [:id, :post_id, :photo])
   end

end
