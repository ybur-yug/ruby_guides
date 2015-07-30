class ChaptersController < ApplicationController
  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      flash[:notice] = "Saved Successfully"
      redirect_to chapters_path
    else
      redirect_to new_chapter_path
    end
  end

  def destroy
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    flash[:notice] = "Destroyed Sucessfully"
    redirect_to chapters_path
  end

  def edit
    @chapter = Chapter.find(params[:id])
  end

  def index
    @chapters = Chapter.all
  end

  def new
    @chapter = Chapter.new
  end

  def show
    @chapter = Chapter.find(params[:id])
  end

  def update
    @chapter = Chapter.find(params[:id])
    if @chapter.update(chapter_params)
      flash[:notice] = "Updated Successfully"
      redirect_to chapters_path
    else
      redirect_to edit_chapter_path(@chapter)
    end
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title)
  end
end
