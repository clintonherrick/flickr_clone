class CommentsController < ApplicationController

  def new
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @comment = Comment.new
  end

  def create
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @comment = @image_attachment.comments.new(comment_params)
    if @comment.save
      redirect_to image_attachment_path(@image_attachment)
    else
      render 'new'
    end
  end

  def edit
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @comment = Comment.find(params[:id])
  end


  def update
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
    redirect_to image_attachment_path(@image_attachment)
  else
      render 'edit'
    end
  end

  def destroy
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to image_attachment_path(@image_attachment)
  end

  private
    def comment_params
       params.require(:comment).permit(:user_comment, :user_id, :image_attachement_id)
    end
end
