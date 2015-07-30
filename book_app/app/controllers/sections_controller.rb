class SectionsController < ApplicationController
  def create
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)
    if @section.save!
      flash[:notice] = "Saved Successfully"
      redirect_to chapter_path(@chapter)
    else
      redirect_to new_chapter_path
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Destroyed Sucessfully"
    redirect_to chapters_path
  end

  def edit
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new
  end

  def show
    @section = Section.find(params[:id])
    @chapter = Chapter.find(params[:chapter_id])
  end

  def update
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
    if @section.update(section_params)
      flash[:notice] = "Updated Successfully"
      redirect_to chapter_section_path(@chapter, @section)
    else
      redirect_to edit_section_path(@section)
    end
  end

  private

  def section_params
    params.require(:section).permit(:title, :body)
  end
end
