class TagsController < ApplicationController
  def new
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @tag = Tag.new
  end
  def create
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @tag = @image_attachment.tags.new(tag_params)
    if @tag.save
      redirect_to image_attachment_path(@image_attachment)
    else
      render :new
    end
  end
  def destroy
    @image_attachment = ImageAttachment.find(params[:image_attachment_id])
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to image_attachment_path(@image_attachment)
  end
  private
  def tag_params
    params.require(:tag).permit(:name, :image_attachment_id)
  end
end
